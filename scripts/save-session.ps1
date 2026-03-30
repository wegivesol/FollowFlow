param(
  [Parameter(ValueFromRemainingArguments = $true)]
  [string[]]$MessageParts
)

$ErrorActionPreference = "Stop"

function Get-CommitMessage([string[]]$parts) {
  $msg = ($parts -join " ").Trim()
  if ($msg.Length -gt 0) { return $msg }
  $stamp = Get-Date -Format "yyyy-MM-dd HH:mm"
  return "checkpoint: session save $stamp"
}

$msg = Get-CommitMessage $MessageParts

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Resolve-Path (Join-Path $scriptDir "..")
Set-Location $repoRoot

git status
git add -A

try {
  git commit -m $msg
} catch {
  $out = $_.Exception.Message
  if ($out -match "nothing to commit" -or $out -match "nothing added to commit") {
    Write-Host "Nothing to commit."
  } else {
    throw
  }
}

git push origin HEAD
git push origin --tags
git status
