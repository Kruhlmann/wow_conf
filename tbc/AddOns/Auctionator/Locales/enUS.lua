function AtrBuildLTable_enUS ()

AtrL = {};

AtrL["SCAN_EXPLANATION"] =  "<br/>"
              .."Scanning the auction house builds a database of prices that Auctionator uses for two purposes: to display in item tooltips "
              .."when you're away from the Auction House and to recommend a price when you're posting an item for which there are no other "
              .."auctions at that moment."
              .."<br/><br/>"
              ..""
              .."If scanning causes your computer to disconnect, go to |cFFffd100https://github.com/Auctionator/Auctionator/wiki|r for possible solutions."
              .."  If scanning causes other problems, you can try |cFFff5555slow scanning|r instead.  Just hold down the Control key before clicking "
              .."the Start Scanning button."
              .."<br/><br/>"

-- New Vars
--- Globals
AUCTIONATOR_SELL_TAB_TEXT = "Sell"
AUCTIONATOR_AUCTION_DURATION = "Default Auction Duration"
AUCTIONATOR_DEFAULT_AUCTIONATOR_TAB = "Default Auctionator tab"
AUCTIONATOR_MINIMUM_QUALITY_LEVEL = "Minimum quality level:"
AUCTIONATOR_MEMORY_USAGE = "Auctionator Memory Usage"
AUCTIONATOR_ITEMS_IN_THE_DATABASE = "Items in the database:"
AUCTIONATOR_DELETE_HISTORICAL_PRICES = "On start-up delete historical prices older than:"
AUCTIONATOR_DELETE_HISTORICAL_PRICES_DAYS = "day/s"
AUCTIONATOR_CLEAR_SCANNING_HISTORY_BTN = "Clear Scanning History"
AUCTIONATOR_CLEAR_POSTING_HISTORY_BTN = "Clear Posting History"
AUCTIONATOR_CLEAR_STACKING_PREFERENCES_BTN = "Clear Stacking Preferences"
AUCTIONATOR_CLEAR_SHOPPING_LISTS_BTN = "Clear Shopping Lists"
AUCTIONATOR_SHOPPING_LISTS_OPTION_DESCRIPTION = "Select multiple shopping lists by holding down the control key while clicking"
AUCTIONATOR_SHPLIST_IMPORTSAVEBTN = "Shopping List Import Button"
AUCTIONATOR_SHPLIST_SAVEBTN = "Save"
AUCTIONATOR_SHPLIST_SELECTALLBTN = "Select All"
AUCTIONATOR_SHPLIST_ALREADY_EXIST = "The following shopping list(s) already exist:"
AUCTIONATOR_SHPLIST_OKAY = "OKAY"
AUCTIONATOR_SHPLIST_NEW_NAME_TEXT = "New name for this list"
AUCTIONATOR_AUTOR_TEXT = "Author:  Borjamacare (US)"
AUCTIONATOR_ITEM_NAME = "Item Name"
AUCTIONATOR_ITEM_PRICE = "Item Price"
AUCTIONATOR_CURRENT_AUCTIONS = "Current Auctions"
AUCTIONATOR_SAVE_THIS_SHPLIST = "Save this Shopping List"
AUCTIONATOR_LOWEST_PRICE = "Lowest Price"
AUCTIONATOR_ITEM_NAME = "Item Name"
AUCTIONATOR_NEW = "New"
AUCTIONATOR_IMPORT = "Import"
AUCTIONATOR_EXPORT = "Export"
AUCTIONATOR_ARE_YOU_SURE = "Are you sure?"
AUCTIONATOR_CLEAR_IT = "Clear It"
AUCTIONATOR_ADD_ITEM = "Add Item"
AUCTIONATOR_REMOVE_ITEM = "Remove Item"
AUCTIONATOR_SEARCH_FOR_ALL_ITEMS = "Search for All Items"
AUCTIONATOR_MANAGE_SHOPPING_LISTS = "Manage Shopping Lists"
AUCTIONATOR_NEW_SHOPPING_LIST = "New Shopping List"
AUCTIONATOR_NEXT_SCAN_ALLOWED = "Next scan allowed:"
AUCTIONATOR_LAST_SCAN = "Last scan:"
AUCTIONATOR_ITEMS_IN_DB = "Items in database:"
AUCTIONATOR_START_SCANNING = "Start Scanning"
AUCTIONATOR_AUCTIONS_SCANNED = "Auctions scanned:"
AUCTIONATOR_ITEMS_ADDED = "Items added:"
AUCTIONATOR_ITEMS_UPDATED = "Items updated:"
AUCTIONATOR_ITEMS_IGNORED = "Items ignored:"
--- End Globals
AtrL["AH"] = ""
AtrL["%A, %B %d at %I:%M %p"] = "%d/%m/%Y at %H:%M" -- Date and Time. Refer to https://www.lua.org/pil/22.1.html
AtrL["Date"] = ""
AtrL["Today"] = ""
AtrL["Yesterday"] = ""
AtrL["Slow scan"] = ""
AtrL["Level"] = ""
AtrL["Shopping list overwritten:"] = ""
AtrL["Shopping list created:"] = ""
AtrL["Paste text that was previously exported into the text area to the left."] = ""
AtrL["Create new shopping lists with new names"] = ""
AtrL["Create new shopping lists with new names."] = ""
AtrL["Overwrite the existing shopping lists with the imported lists."] = ""
AtrL["Abort the import.  You can hand-edit the import text to change the names and then try again."] = ""
AtrL["Click Select All, type Ctrl-C to copy the text and then paste into any text document."] = ""
AtrL["%6d items"] = "" -- AUCTIONATOR_ITEMS_IN_THE_DATABASE %6d items description
AtrL["Default Auction duration"] = ""
AtrL["Options..."] = ""
AtrL["More"] = ""
AtrL["Yes, cancel them"] = ""
AtrL["Start canceling"] = ""
AtrL["No, leave them"] = ""
AtrL["Basic Options"] = ""
AtrL["Show Starting Price on the Sell Tab"] = ""
AtrL["Enable debug mode"] = ""
AtrL["basic options saved"] = ""
AtrL["Reset to Default"] = ""
AtrL["Shopping Lists"] = ""
AtrL["New"] = ""
AtrL["Edit"] = ""
AtrL["Delete"] = ""
AtrL["Rename"] = ""
AtrL["Import"] = ""
AtrL["Export"] = ""
AtrL["Tooltips"] = ""
AtrL["Show vendor prices in tooltips"] = ""
AtrL["Show auction house prices in tooltips"] = ""
AtrL["Show disenchant prices in tooltips"] = ""
AtrL["Show auction house prices in mailbox tooltips"] = ""
AtrL["Undercutting"] = ""
AtrL["Selling"] = ""
AtrL["Configure how you typically like to sell the items listed below."] = ""
AtrL["Clears"] = "Pulizia"
AtrL["The features below will help you clear out data that Auctionator stores.  Typically you would only need this in the event that that data gets corrupted."] = ""
AtrL["Read the FAQ at"] = "Leggi le FAQ su"
AtrL["MoP disenchanting data courtesy of the Norganna's AddOns (the Auctioneer folks)"] = ""
AtrL["Subcategory"] = ""
AtrL["Search For"] = ""
AtrL["Level Range"] = LEVEL_RANGE.."."
AtrL["Advanced Search"] = ""
AtrL["Advanced"] = ADVANCED_LABEL
AtrL["Vendor"] = AUCTION_CREATOR
AtrL["Version"] = GAME_VERSION_LABEL
AtrL["items"] = ""
AtrL["Time:"] = ""
AtrL["auctions returned empty results (out of %d)"] = ""
AtrL["auctions returned null itemLinks (out of %d)"] = ""
AtrL["Blizzard server failed to return all items"] = ""
AtrL["You might want to try slow scanning."] = ""
AtrL["Buy Another"] = ""
AtrL["Buy One"] = ""
AtrL["Are you sure you want to clear the scanned prices database?"] = ""
AtrL["This will clear the pricing history for all items for all your characters - even characters on different servers."] = ""
AtrL["Pricing history cleared."] = ""
AtrL["Are you sure you want to clear the posting history?"] = ""
AtrL["This will clear the information that Auctionator keeps for all items that you've posted - as shown on the \"Other\" tab after you scan for an item that you've sold in the past."] = ""
AtrL["Posting history cleared."] = ""
AtrL["Are you sure you want to clear your stacking preferences?"] = ""
AtrL["Go ahead - this isn't a big deal.  Auctionator will figure it out again fairly quickly.  This is just some info Auctionator keeps to help it set the default stack size a bit more intelligently."] = ""
AtrL["Stacking preferences cleared."] = ""
AtrL["Are you sure you want to clear your shopping lists?"] = ""
AtrL["If you put a lot of time into constructing detailed shopping lists, this will require you to build them all over again."] = ""
AtrL["Shopping lists cleared."] = ""
AtrL["Memory went from"] = ""
AtrL["to"] = ""
AtrL["Disenchant data restored. Number of entries:"] = ""
AtrL["No data available to be restored."] = ""
AtrL["1 stack available"] = ""
AtrL["%d stacks available"] = ""
AtrL["none available"] = ""
AtrL["Waiting for auction data"] = ""
AtrL["Updating database"] = ""
AtrL["Scan complete"] = ""
AtrL["Analyzing data"] = ""
AtrL["out of"] = ""
AtrL["Page %s of %s"] = ""
AtrL["FULL SCAN:"] = ""
AtrL["AUCTIONATOR_FS_CHUNK:"] = ""
AtrL["Warning"] = ""
AtrL["Bad item scanned."] = ""
AtrL["Name:"] = ""
AtrL["Count:"] = ""
AtrL["badItemCount:"] = ""
AtrL["ignored"] = ""
AtrL["Scanning auctions: page %d of %d"] = ""
AtrL["Scanning auctions for %s%s"] = ""
AtrL["When the Auction House is open\nclicking this button tells Auctionator\nto scan for the item and all its reagents."] = ""
AtrL["%d bought so far"] = ""
AtrL["%d available"] = ""
AtrL["%d of your auctions are not the lowest priced.\n\nWould you like to cancel them?"] = ""
AtrL["Keep going"] = ""
AtrL["Done"] = ""
AtrL["Italian translation courtesy of %s"] = ""
-- End New Vars

-- Old Vars
AtrL["%d of %d bought so far"] = ""
AtrL["Active Items"] = ""
AtrL["Add Item To List"] = ""
AtrL["All Items"] = ""
AtrL["always"] = ""
AtrL["Are you sure you want to create\nan auction with no buyout price?"] = ""
AtrL["As many as possible"] = ""
AtrL["Auction"] = ""
AtrL["Auction #%d created for %s"] = ""
AtrL["Auction cancelled for "] = ""
AtrL["Auction created for %s"] = ""
AtrL["Auction House timed out"] = ""
AtrL["Auctionator"] = ""
AtrL["Auctionator has yet to record any auctions for this item"] = ""
AtrL["Auctionator provided an auction module to LilSparky's Workshop."] = ""
AtrL["Auctionator scan data"] = ""
AtrL["Auctions scanned"] = ""
AtrL["Auctions scanned:"] = ""
AtrL["Author:  Borjamacare"] = ""
AtrL["Automatically cancel all of your auctions|n|nthat are not the lowest priced?"] = ""
AtrL["available"] = ""
AtrL["average of your auctions for"] = ""
AtrL["Back"] = ""
AtrL["based on"] = ""
AtrL["based on cheapest current auction"] = ""
AtrL["based on cheapest stack of the same size"] = ""
AtrL["based on selected auction"] = ""
AtrL["Basic Options for %s"] = ""
AtrL["BOP"] = ""
AtrL["Buy"] = ""
AtrL["Buyout Price"] = ""
AtrL["Cancel Auctions"] = ""
AtrL["Category"] = ""
AtrL["Check and Cancel Auctions"] = ""
AtrL["Check for Undercuts"] = ""
AtrL["Checking stopped"] = ""
AtrL["Chinese/Taiwan translation courtesy of %s"] = ""
AtrL["Cleaning up"] = ""
AtrL["Common"] = ""
AtrL["Common items"] = ""
AtrL["Continue"] = ""
AtrL["Create %d Auctions"] = ""
AtrL["Create Auction"] = ""
AtrL["Create Multiple Auctions failed.\nYou need at least one empty slot in your bags."] = ""
AtrL["Current"] = ""
AtrL["Current Auctions"] = ""
AtrL["Default Auctionator tab"] = ""
AtrL["default behavior"] = ""
AtrL["Delete Shopping List"] = ""
AtrL["Deposit"] = ""
AtrL["Disenchant"] = ""
AtrL["Drag an item you want to sell to this area."] = ""
AtrL["Duration"] = ""
AtrL["Edit"] = ""
AtrL["Epic"] = ""
AtrL["Epic items"] = ""
AtrL["Flasks"] = ""
AtrL["For information on the latest version browse to"] = ""
AtrL["for your stack of %d"] = ""
AtrL["Forget this Item"] = ""
AtrL["French translation courtesy of %s"] = ""
AtrL["Full Scan"] = ""
AtrL["full scan database cleared"] = ""
AtrL["Full Scan..."] = ""
AtrL["Gems - Cut"] = ""
AtrL["Gems - Uncut"] = ""
AtrL["German translation courtesy of %s"] = ""
AtrL["Glyphs"] = ""
AtrL["Herbs"] = ""
AtrL["History"] = ""
AtrL["If this option is checked, every time you initiate a new auction the auction duration will be reset to the default duration you've selected."] = ""
AtrL["If this option is checked, holding the Alt key down while clicking an item in your bags will switch to the Auctionator panel, place the item in the Auction Item area, and start the scan."] = ""
AtrL["If this option is checked, the Auctionator BUY panel will display first whenever you open the Auction House window."] = ""
AtrL["Ignore any ERROR message to the contrary below."] = ""
AtrL["in about %d minutes"] = ""
AtrL["in about one minute"] = ""
AtrL["in less than a minute"] = ""
AtrL["Item Enhancements"] = ""
AtrL["Item Name"] = ""
AtrL["Item Price"] = ""
AtrL["Items added to database"] = ""
AtrL["Items added:"] = ""
AtrL["Items ignored"] = ""
AtrL["Items ignored:"] = ""
AtrL["Items in database:"] = ""
AtrL["Items updated in database"] = ""
AtrL["Items updated:"] = ""
AtrL["Just Check Auctions"] = ""
AtrL["Last scan:"] = ""
AtrL["Lowest Price"] = ""
AtrL["max"] = ""
AtrL["max. stacks of %d"] = ""
AtrL["Minimum Quality Level"] = ""
AtrL["Minimum quality level:"] = ""
AtrL["More"] = ""
AtrL["Name for your new shopping list"] = ""
AtrL["never"] = ""
AtrL["Never"] = ""
AtrL["New"] = ""
AtrL["New Shopping List"] = ""
AtrL["Next scan allowed:"] = ""
AtrL["no buyout price"] = ""
AtrL["No current auctions found"] = ""
AtrL["No current auctions found\n\n(related auctions shown)"] = ""
AtrL["No current auctions with buyouts found"] = ""
AtrL["None"] = ""
AtrL["Now"] = ""
AtrL["Only include items in the scanning database that are this level or higher"] = ""
AtrL["Other"] = ""
AtrL["over %d gold"] = ""
AtrL["over %d silver"] = ""
AtrL["over 1 gold"] = ""
AtrL["Past"] = ""
AtrL["per item"] = ""
AtrL["Per Item"] = ""
AtrL["per item price"] = ""
AtrL["per stack"] = ""
AtrL["percent"] = ""
AtrL["Poor (all)"] = ""
AtrL["Poor items"] = ""
AtrL["Potions and Elixirs"] = ""
AtrL["pricing history cleared"] = ""
AtrL["Processing"] = ""
AtrL["Quest Item"] = ""
AtrL["Rare"] = ""
AtrL["Rare items"] = ""
AtrL["Really delete the shopping list %s ?"] = ""
AtrL["Entry must not be blank"] = ""
AtrL["Recent Searches"] = ""
AtrL["Recommended Buyout Price"] = ""
AtrL["Recommended buyout price"] = ""
AtrL["Remove Item From List"] = ""
AtrL["removed from database"] = ""
AtrL["Required DE skill level"] = ""
AtrL["Reset to Default"] = ""
AtrL["Russian translation courtesy of %s"] = ""
AtrL["Scan complete"] = ""
AtrL["Scan in progress"] = ""
AtrL["Scanning"] = ""
AtrL["Scanning auctions: page %d"] = ""
AtrL["Scanning is entirely optional."] = ""
AtrL["scanning options saved"] = ""
AtrL["Search"] = ""
AtrL["Select an item from the list on the left\n or type a search term above to start a scan."] = ""
AtrL["Select the Auctionator panel to be displayed first whenever you open the Auction House window."] = ""
AtrL["Sell"] = ""
AtrL["Show disenchanting details"] = ""
AtrL["Source"] = ""
AtrL["Spanish translation courtesy of %s"] = ""
AtrL["stack"] = ""
AtrL["stack for"] = ""
AtrL["stack of"] = ""
AtrL["stack price"] = ""
AtrL["Stack Price"] = ""
AtrL["stacks for"] = ""
AtrL["stacks for:"] = ""
AtrL["stacks of"] = ""
AtrL["Start Scanning"] = ""
AtrL["Starting Price"] = ""
AtrL["Starting Price Discount"] = ""
AtrL["Stop Checking"] = ""
AtrL["Swedish translation courtesy of %s"] = ""
AtrL["The latest information on Auctionator can be found at"] = ""
AtrL["There is a more recent version of Auctionator: VERSION"] = ""
AtrL["tooltip configuration saved"] = ""
AtrL["Total Price"] = ""
AtrL["trade volume"] = ""
AtrL["Uncommon"] = ""
AtrL["Uncommon items"] = ""
AtrL["Undercut by"] = ""
AtrL["undercutting configuration saved"] = ""
AtrL["unknown"] = ""
AtrL["unrecognized command"] = ""
AtrL["Vendor"] = ""
AtrL["Version"] = ""
AtrL["when ALT is held down"] = ""
AtrL["when CONTROL is held down"] = ""
AtrL["When SHIFT is down show"] = ""
AtrL["when SHIFT is held down"] = ""
AtrL["Wowecon global price"] = ""
AtrL["Wowecon server price"] = ""
AtrL["You can buy at most %d auctions"] = ""
AtrL["You can create at most %d auctions"] = ""
AtrL["You can stack at most %d of these items"] = ""
AtrL["You do not have enough gold\n\nto make any more purchases."] = ""
AtrL["You may have at most 40 single-stack (x1)\nauctions posted for this item.\n\nYou already have %d such auctions and\nyou are trying to post %d more."] = ""
AtrL["You may have no more than\n\n%d items on a shopping list."] = ""
AtrL["your auction on"] = ""
AtrL["your most recent posting"] = ""
AtrL["yours"] = ""
--End Old Vars
end
