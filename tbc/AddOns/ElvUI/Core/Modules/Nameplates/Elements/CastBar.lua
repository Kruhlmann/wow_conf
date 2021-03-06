local E, L, V, P, G = unpack(ElvUI)
local NP = E:GetModule('NamePlates')
local CH = E:GetModule('Chat')
local LSM = E.Libs.LSM

local _G = _G
local abs = abs
local unpack = unpack
local strjoin = strjoin
local strmatch = strmatch
local CreateFrame = CreateFrame
local UnitCanAttack = UnitCanAttack
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local INTERRUPTED = INTERRUPTED

function NP:Castbar_CheckInterrupt(unit)
	if unit == 'vehicle' then
		unit = 'player'
	end

	if self.notInterruptible and UnitCanAttack('player', unit) then
		self:SetStatusBarColor(NP.db.colors.castNoInterruptColor.r, NP.db.colors.castNoInterruptColor.g, NP.db.colors.castNoInterruptColor.b)

		if self.Icon and NP.db.colors.castbarDesaturate then
			self.Icon:SetDesaturated(true)
		end
	else
		self:SetStatusBarColor(NP.db.colors.castColor.r, NP.db.colors.castColor.g, NP.db.colors.castColor.b)

		if self.Icon then
			self.Icon:SetDesaturated(false)
		end
	end
end

function NP:Castbar_CustomDelayText(duration)
	if self.channeling then
		if self.channelTimeFormat == 'CURRENT' then
			self.Time:SetFormattedText('%.1f |cffaf5050%.1f|r', abs(duration - self.max), self.delay)
		elseif self.channelTimeFormat == 'CURRENTMAX' then
			self.Time:SetFormattedText('%.1f / %.1f |cffaf5050%.1f|r', duration, self.max, self.delay)
		elseif self.channelTimeFormat == 'REMAINING' then
			self.Time:SetFormattedText('%.1f |cffaf5050%.1f|r', duration, self.delay)
		elseif self.channelTimeFormat == 'REMAININGMAX' then
			self.Time:SetFormattedText('%.1f / %.1f |cffaf5050%.1f|r', abs(duration - self.max), self.max, self.delay)
		end
	else
		if self.castTimeFormat == 'CURRENT' then
			self.Time:SetFormattedText('%.1f |cffaf5050%s %.1f|r', duration, '+', self.delay)
		elseif self.castTimeFormat == 'CURRENTMAX' then
			self.Time:SetFormattedText('%.1f / %.1f |cffaf5050%s %.1f|r', duration, self.max, '+', self.delay)
		elseif self.castTimeFormat == 'REMAINING' then
			self.Time:SetFormattedText('%.1f |cffaf5050%s %.1f|r', abs(duration - self.max), '+', self.delay)
		elseif self.castTimeFormat == 'REMAININGMAX' then
			self.Time:SetFormattedText('%.1f / %.1f |cffaf5050%s %.1f|r', abs(duration - self.max), self.max, '+', self.delay)
		end
	end
end

function NP:Castbar_CustomTimeText(duration)
	if self.channeling then
		if self.channelTimeFormat == 'CURRENT' then
			self.Time:SetFormattedText('%.1f', abs(duration - self.max))
		elseif self.channelTimeFormat == 'CURRENTMAX' then
			self.Time:SetFormattedText('%.1f / %.1f', abs(duration - self.max), self.max)
		elseif self.channelTimeFormat == 'REMAINING' then
			self.Time:SetFormattedText('%.1f', duration)
		elseif self.channelTimeFormat == 'REMAININGMAX' then
			self.Time:SetFormattedText('%.1f / %.1f', duration, self.max)
		end
	else
		if self.castTimeFormat == 'CURRENT' then
			self.Time:SetFormattedText('%.1f', duration)
		elseif self.castTimeFormat == 'CURRENTMAX' then
			self.Time:SetFormattedText('%.1f / %.1f', duration, self.max)
		elseif self.castTimeFormat == 'REMAINING' then
			self.Time:SetFormattedText('%.1f', abs(duration - self.max))
		elseif self.castTimeFormat == 'REMAININGMAX' then
			self.Time:SetFormattedText('%.1f / %.1f', abs(duration - self.max), self.max)
		end
	end
end

function NP:Castbar_PostCastStart(unit)
	self:CheckInterrupt(unit)
end

function NP:Castbar_PostCastFail()
	self:SetStatusBarColor(NP.db.colors.castInterruptedColor.r, NP.db.colors.castInterruptedColor.g, NP.db.colors.castInterruptedColor.b)
end

function NP:Castbar_PostCastInterruptible(unit)
	self:CheckInterrupt(unit)
end

function NP:Castbar_PostCastStop() end

function NP:Construct_Castbar(nameplate)
	local Castbar = CreateFrame('StatusBar', nameplate:GetName()..'Castbar', nameplate)
	Castbar:SetFrameStrata(nameplate:GetFrameStrata())
	Castbar:SetFrameLevel(5)
	Castbar:CreateBackdrop('Transparent', nil, nil, nil, nil, true, true)
	Castbar:SetStatusBarTexture(LSM:Fetch('statusbar', NP.db.statusbar))

	NP.StatusBars[Castbar] = true

	Castbar.Button = CreateFrame('Frame', nil, Castbar)
	Castbar.Button:SetTemplate(nil, nil, nil, nil, nil, true, true)

	Castbar.Icon = Castbar.Button:CreateTexture(nil, 'ARTWORK')
	Castbar.Icon:SetTexCoord(unpack(E.TexCoords))
	Castbar.Icon:SetInside()

	Castbar.Time = Castbar:CreateFontString(nil, 'OVERLAY')
	Castbar.Time:FontTemplate(LSM:Fetch('font', NP.db.font), NP.db.fontSize, NP.db.fontOutline)
	Castbar.Time:Point('RIGHT', Castbar, 'RIGHT', -4, 0)
	Castbar.Time:SetJustifyH('RIGHT')

	Castbar.Text = Castbar:CreateFontString(nil, 'OVERLAY')
	Castbar.Text:FontTemplate(LSM:Fetch('font', NP.db.font), NP.db.fontSize, NP.db.fontOutline)
	Castbar.Text:Point('LEFT', Castbar, 'LEFT', 4, 0)
	Castbar.Text:SetJustifyH('LEFT')
	Castbar.Text:SetWordWrap(false)

	Castbar.CheckInterrupt = NP.Castbar_CheckInterrupt
	Castbar.CustomDelayText = NP.Castbar_CustomDelayText
	Castbar.CustomTimeText = NP.Castbar_CustomTimeText
	Castbar.PostCastStart = NP.Castbar_PostCastStart
	Castbar.PostCastFail = NP.Castbar_PostCastFail
	Castbar.PostCastInterruptible = NP.Castbar_PostCastInterruptible
	Castbar.PostCastStop = NP.Castbar_PostCastStop

	if nameplate == _G.ElvNP_Test then
		Castbar.Hide = Castbar.Show
		Castbar:Show()
		Castbar.Text:SetText('Casting')
		Castbar.Time:SetText('3.1')
		Castbar.Icon:SetTexture([[Interface\Icons\Achievement_Character_Pandaren_Female]])
		Castbar:SetStatusBarColor(NP.db.colors.castColor.r, NP.db.colors.castColor.g, NP.db.colors.castColor.b)
	end

	return Castbar
end

function NP:COMBAT_LOG_EVENT_UNFILTERED()
	local _, event, _, sourceGUID, sourceName, _, _, targetGUID = CombatLogGetCurrentEventInfo()
	if (event == 'SPELL_INTERRUPT' or event == 'SPELL_PERIODIC_INTERRUPT') and targetGUID and (sourceName and sourceName ~= '') then
		local plate, classColor = NP.PlateGUID[targetGUID]
		if plate and plate.Castbar then
			local db = plate.frameType and self.db and self.db.units and self.db.units[plate.frameType]
			if db and db.castbar and db.castbar.enable and db.castbar.sourceInterrupt then
				if db.castbar.timeToHold > 0 then
					local name = strmatch(sourceName, '([^%-]+).*')
					if db.castbar.sourceInterruptClassColor then
						local data = CH:GetPlayerInfoByGUID(sourceGUID)
						if data and data.classColor then
							classColor = data.classColor.colorStr
						end

						plate.Castbar.Text:SetFormattedText('%s > %s', INTERRUPTED, classColor and strjoin('', '|c', classColor, name) or name)
					else
						plate.Castbar.Text:SetFormattedText('%s > %s', INTERRUPTED, name)
					end
				end
			end
		end
	end
end

function NP:Update_Castbar(nameplate)
	local frameDB = NP:PlateDB(nameplate)
	local db = frameDB.castbar

	if nameplate == _G.ElvNP_Test then
		nameplate.Castbar:SetAlpha((not frameDB.nameOnly and db.enable) and 1 or 0)
	end

	if db.enable then
		if not nameplate:IsElementEnabled('Castbar') then
			nameplate:EnableElement('Castbar')
		end

		nameplate.Castbar.timeToHold = db.timeToHold
		nameplate.Castbar.castTimeFormat = db.castTimeFormat
		nameplate.Castbar.channelTimeFormat = db.channelTimeFormat

		nameplate.Castbar:Size(db.width, db.height)
		nameplate.Castbar:Point('CENTER', nameplate, 'CENTER', db.xOffset, db.yOffset)

		if db.showIcon then
			nameplate.Castbar.Button:ClearAllPoints()
			nameplate.Castbar.Button:Point(db.iconPosition == 'RIGHT' and 'BOTTOMLEFT' or 'BOTTOMRIGHT', nameplate.Castbar, db.iconPosition == 'RIGHT' and 'BOTTOMRIGHT' or 'BOTTOMLEFT', db.iconOffsetX, db.iconOffsetY)
			nameplate.Castbar.Button:Size(db.iconSize, db.iconSize)
			nameplate.Castbar.Button:Show()
		else
			nameplate.Castbar.Button:Hide()
		end

		nameplate.Castbar.Time:ClearAllPoints()
		nameplate.Castbar.Text:ClearAllPoints()

		if db.textPosition == 'BELOW' then
			nameplate.Castbar.Time:Point('TOPRIGHT', nameplate.Castbar, 'BOTTOMRIGHT', db.timeXOffset, db.timeYOffset)
			nameplate.Castbar.Text:Point('TOPLEFT', nameplate.Castbar, 'BOTTOMLEFT', db.textXOffset, db.textYOffset)
		elseif db.textPosition == 'ABOVE' then
			nameplate.Castbar.Time:Point('BOTTOMRIGHT', nameplate.Castbar, 'TOPRIGHT', db.timeXOffset, db.timeYOffset)
			nameplate.Castbar.Text:Point('BOTTOMLEFT', nameplate.Castbar, 'TOPLEFT', db.textXOffset, db.textYOffset)
		else
			nameplate.Castbar.Time:Point('RIGHT', nameplate.Castbar, 'RIGHT', db.timeXOffset, db.timeYOffset)
			nameplate.Castbar.Text:Point('LEFT', nameplate.Castbar, 'LEFT', db.textXOffset, db.textYOffset)
		end

		if db.hideTime then
			nameplate.Castbar.Time:Hide()
		else
			nameplate.Castbar.Time:FontTemplate(LSM:Fetch('font', db.font), db.fontSize, db.fontOutline)
			nameplate.Castbar.Time:Show()
		end

		if db.hideSpellName then
			nameplate.Castbar.Text:Hide()
		else
			nameplate.Castbar.Text:FontTemplate(LSM:Fetch('font', db.font), db.fontSize, db.fontOutline)
			nameplate.Castbar.Text:Show()
		end
	elseif nameplate:IsElementEnabled('Castbar') then
		nameplate:DisableElement('Castbar')
	end
end
