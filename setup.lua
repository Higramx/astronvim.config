--[[ require('neo-tree').setup {
    filesystem = {
        filtered_items = {
            visible = false,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_hidden = true,
             hide_by_name = {
                "AMTAG.BIN",
                "BOOTNXT",
                "BOOTSECT.BAK",
                "DumpStack.log.tmp",
                "AI_RecycleBin",
                "Aomei",
                "Boot",
                "Config.Msi",
                "Documents and Settings",
            },
            hide_by_pattern = {
                "$*"
            }
        }
    }
} ]]
