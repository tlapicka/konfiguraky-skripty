--
-- Options to get some programs work more nicely (or at all)
--

defwinprop{ class = "Kupfer.py", float = true }
defwinprop{ class = "Stardict", float = true }
defwinprop{ class = "Xfce4-notifyd", float = true, jumpto = false, 
                                                    switchto = false }
--defwinprop{ class = "sxiv", instance="sxiv", float = true }
--defwinprop{ class = "Claws-mail", acrobatic = true }
defwinprop{ class = "Claws-mail", role="foldersel", float = true }
defwinprop{ class = "Claws-mail", acrobatic=true, float = true }
defwinprop{ class = "Claws-mail", role="mainwindow", float = false }
defwinprop{ class = "Claws-mail", role="compose", float = false }

defwinprop{ class = "Iceweasel", float = true }
defwinprop{ class = "Iceweasel", role="browser", float = false }

defwinprop{ class = "Italc", instance = "italc", float = true }

defwinprop{
    class = "AcroRead",
    instance = "documentShell",
    acrobatic = true
}


defwinprop{
    class = "Xpdf",
    instance = "openDialog_popup",
    ignore_cfgrq = true,
}


-- Put all dockapps in the statusbar's systray, also adding the missing
-- size hints necessary for this to work.
defwinprop{
    is_dockapp = true,
    statusbar = "systray",
    max_size = { w = 64, h = 64},
    min_size = { w = 64, h = 64},
}

-- Make an exception for Docker, which sets correct size hints.
defwinprop{
--    is_dockapp = true,
    class = "Docker",
    statusbar = "docker",
}


-- You might want to enable these if you really must use XMMS. 
--[[
defwinprop{
    class = "xmms",
    instance = "XMMS_Playlist",
    transient_mode = "off"
}

defwinprop{
    class = "xmms",
    instance = "XMMS_Player",
    transient_mode = "off"
}
--]]



-- Define some additional title shortening rules to use when the full
-- title doesn't fit in the available space. The first-defined matching 
-- rule that succeeds in making the title short enough is used.

-- Claws Mail
ioncore.defshortening(".+@.+ - Claws Mail", "Claws Mail", true)
-- Iceweasel
ioncore.defshortening("(.*) - Vimperator", 
                      "Iceweasel: $1$|Iceweasel$<..$1$|$1$<..", true )
-- terminal
ioncore.defshortening("(.+)@(.+):(.+)", "$1@$2:$3$|$1@$2:$<..$3$|..$>$3")

------------------------------------------------------------------------
ioncore.defshortening("(.*) - Mozilla(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*) - Mozilla", "$1$|$1$<...")
ioncore.defshortening("XMMS - (.*)", "$1$|...$>$1")
ioncore.defshortening("[^:]+: (.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("[^:]+: (.*)", "$1$|$1$<...")
ioncore.defshortening("(.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*)", "$1$|$1$<...")
