param(
    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

function Test-Command {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Name
    )

    return $null -ne (Get-Command $Name -ErrorAction SilentlyContinue)
}

$repoRoot = $PSScriptRoot
Set-Location $repoRoot

$dockerArgs = @('compose', 'up', 'local')
$jekyllArgs = @('exec', 'jekyll', 'serve', '--watch', '--force_polling', '--host=0.0.0.0')

if (Test-Command 'docker') {
    Write-Host 'Starting the local website with Docker Compose...'
    Write-Host 'Open http://localhost:4000 once the server finishes starting.'

    if ($DryRun) {
        Write-Host ('Dry run: docker ' + ($dockerArgs -join ' '))
        exit 0
    }

    & docker @dockerArgs
    if ($LASTEXITCODE -ne 0) {
        Write-Host ''
        Write-Host 'Docker Compose exited before the preview stayed up.'
        Write-Host 'Make sure Docker Desktop is installed and running, then try again.'
    }
    exit $LASTEXITCODE
}

if (Test-Command 'bundle') {
    Write-Host 'Docker was not found, so starting the local website with Bundler...'
    Write-Host 'Open http://localhost:4000 once the server finishes starting.'

    if ($DryRun) {
        Write-Host ('Dry run: bundle ' + ($jekyllArgs -join ' '))
        exit 0
    }

    & bundle @jekyllArgs
    if ($LASTEXITCODE -ne 0) {
        Write-Host ''
        Write-Host 'Bundler exited before the preview stayed up.'
        Write-Host 'Make sure the Ruby gems for this site are installed, then try again.'
    }
    exit $LASTEXITCODE
}

Write-Host 'No supported local preview tool was found.'
Write-Host 'Install Docker Desktop, then run .\view-local.ps1 from this folder.'
Write-Host 'If you prefer a native Ruby setup, install Bundler and Jekyll and run the same script again.'
exit 1
