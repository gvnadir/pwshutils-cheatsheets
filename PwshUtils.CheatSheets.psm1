. "$PSScriptRoot\Private\Get-GistFile.ps1"

<#
.SYNOPSIS
Displays a mapping of equivalent commands between Windows and Linux.

.DESCRIPTION
This function provides a reference table of common administrative or network-related commands
and their equivalents in both Windows and Linux environments.
You can optionally provide a case-insensitive filter to search within the 'Windows' and 'Linux' columns.

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively
to both the 'Windows' and 'Linux' columns.

.EXAMPLE
Get-WinLinuxMap

Displays the full list of mapped commands.

.EXAMPLE
Get-WinLinuxMap ping

Filters the list to show only commands that include the word 'ping' in either the Windows or Linux command fields.

.NOTES
Author: GVNADIR
Module: PwshUtils.CheatSheets
#>
Function Get-WinLinuxMap {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

	$data = Get-GistFile -Url 'https://gist.githubusercontent.com/gvnadir/c9bcbc3350158726aaa67b1ae2103c91/raw/PowerShellLinuxMap.csv'

	if ($Filter) {
		$data = $data | Where-Object {
			$_.Windows -ilike "*$Filter*" -or
			$_.Linux -ilike "*$Filter*"
		}
	}

	$data 
}

<#
.SYNOPSIS
Displays a cheat sheet of common Vim commands and configurations.

.DESCRIPTION
This function provides a quick reference to essential Vim commands, categorized by section.
You can optionally provide a filter string to search within the 'Command' column.

.PARAMETER Filter
A case-insensitive text filter that matches against the 'Command' column.
Returns only rows where the command contains the specified text.

.EXAMPLE
Get-VimCheatSheet

Displays the full Vim cheat sheet.

.EXAMPLE
Get-VimCheatSheet gg

Displays only the Vim commands that contain 'gg'.

.NOTES
Author: GVNADIR
Module: PwshUtils.CheatSheets
#>
Function Get-VimCheatSheet {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

	$data = Get-GistFile -Url 'https://gist.githubusercontent.com/gvnadir/8d240f6a885b301a7cbbfdcb563d4600/raw/VimCheatSheet.csv'

	if ($Filter) {
		$data = $data | Where-Object {
			$_.Command -ilike "*$Filter*"
		}
	}
	
	$data
}

<#
.SYNOPSIS
Displays a list of useful Windows commands and shortcuts.

.DESCRIPTION
This function provides a quick reference of Windows commands that can be used via Run dialog, terminal, or shortcuts.
You can optionally provide a case-insensitive filter to search within the 'Name' and 'Command' columns.

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively
to both the 'Name' and 'Command' columns.

.EXAMPLE
Get-WindowsCommands

Displays the full list of known Windows commands.

.EXAMPLE
Get-WindowsCommands task

Filters the list to show commands containing 'task' in either the name or the command itself.

.NOTES
Author: GVNADIR
Module: PwshUtils.CheatSheets
#>
Function Get-WindowsCommands {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

	$data = Get-GistFile -Url 'https://gist.githubusercontent.com/gvnadir/46f0ccd9b7d58d17d51e73e972e75caa/raw/WindowsRun.csv'

	if ($Filter) {
		$data = $data | Where-Object {
			$_.Name -ilike "*$Filter*" -or
			$_.Command -ilike "*$Filter*" 
		}
	}
	
	$data
}