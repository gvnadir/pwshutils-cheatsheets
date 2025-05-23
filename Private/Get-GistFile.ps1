Function Get-GistFile {
	param (
		[string]$Url
	)

	$fileName = $Url.Split("/")[-1]
	$cache = "$env:LOCALAPPDATA\PwshUtils\$fileName"

	try {
		if (-not (Test-Path (Split-Path $cache))) {
			New-Item -ItemType Directory -Path (Split-Path $cache) -Force | Out-Null
		}

		Invoke-WebRequest -Uri $url -OutFile $cache -ErrorAction Stop
	}
 catch {
		Write-Warning "Download failed. Using local copy if available."
	}

	if (Test-Path $cache) {
		Import-Csv $cache
	}
 else {
		throw "No CSV file available."
	}

}