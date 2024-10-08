netsh winhttp set proxy proxy-server="http=http://127.0.0.1:7890;https=https://127.0.0.1:7890" bypass-list="localhost,127.0.0.1"

oh-my-posh init powershell --config "~/copytheme.omp.json" | Invoke-Expression
Import-Module PSReadLine
Import-Module syntax-highlighting
Set-PSReadLineOption -PredictionSource History
Set-Alias -Name pwsh -Value powershell
Set-Alias -Name python2 -Value python

function Show-Files-With-Icons {
	param (
		[Parameter(Position=0, ValueFromRemainingArguments=$true)]
		$args
	)
	eza --icons=always -l $args
}
Set-Alias -Name ll -Value Show-Files-With-Icons

function Vim-File {
	param (
		[Parameter(Position=0, ValueFromRemainingArguments=$true)]
		$args
	)
	nvim $args
}
Set-Alias -Name vi -Value nvim

function Which-Like-Linux-By-Scoop {
	param (
		[Parameter(Position=0, ValueFromRemainingArguments=$true)]
		$args
	)
	scoop which $args
}
Set-Alias -Name which -Value Which-Like-Linux-By-Scoop

Invoke-Expression (& { (zoxide init powershell | Out-String) })
