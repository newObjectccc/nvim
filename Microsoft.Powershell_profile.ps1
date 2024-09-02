oh-my-posh init powershell --config "~/copytheme.omp.json" | Invoke-Expression
Import-Module PSReadLine
Import-Module syntax-highlighting
Set-PSReadLineOption -PredictionSource History
Set-Alias -Name pwsh -Value powershell

function Show-Files-With-Icons {
	param (
		[Parameter(Position=0, ValueFromRemainingArguments=$true)]
		$args
	)
	eza --icons=always $args
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

Invoke-Expression (& { (zoxide init powershell | Out-String) })
