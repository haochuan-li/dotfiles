oh-my-posh init pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/amro.omp.json | Invoke-Expression
Enable-PoshTooltips

Set-PSReadLineOption -PredictionSource History
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PsReadLineOption -PredictionViewStyle ListView

Import-Module -Name Terminal-Icons

Set-Alias j z
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
