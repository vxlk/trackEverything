"COMBAT_LOG_EVENT_UNFILTERED"

--[[
<Added in Patch 2.4.0> See API COMBAT LOG EVENT.
AddOns wanting to parse all events the moment they happen should register for this event. (See this blue posting for more info)

arg1
    timestamp 
arg2
    event 
arg3
    sourceGUID 
arg4
    sourceName 
arg5
    sourceFlags 
arg6
    destGUID 
arg7
    destName 
arg8
    destFlags 
arg9
    spellID 
arg10
    spellName 
arg11
    spellSchool 
arg12
    SuffixParam1 
arg13
    SuffixParam2 
arg14
    SuffixParam3 
arg15
    SuffixParam4 
arg16
    SuffixParam5 
arg17
    SuffixParam6 
arg18
    SuffixParam7 
arg19
    SuffixParam8 
arg20
    SuffixParam9 
]]

--Trigger
function(event, arg1, arg2, ...)
    if event == "COMBAT_LOG_EVENT_UNFILTERED" then
        --[[

            Analyze string
            if !relevant return false
            if relevant get spellID
            get spell cooldown
            display icon
            display cooldown remaining on icon
            return true
            
          ]]
        return true
    end
end

--[[
--this may be used for efficiency in the future
--Untrigger
function(event, arg1, arg2, ...)
    if event == "ENCOUNTER_END" then
        --Use the arguments for this event, or dont, just untrigger.
        return true
    end
end
]]