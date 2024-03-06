Dependencies for building: XeLaTeX, GNU Make

On Windows, use command `make platform=windows name={name}` to build `{name}.tex`. Note that the `open` target opens
the compiled PDF with Sumatra PDF, which has a PowerShell alias set to `sumatra` with the following PowerShell profile
configuration:
```New-Alias -Name sumatra -Value "C:\Program Files\SumatraPDF\SumatraPDF.exe"```

On macOS, use command `make platform=mac name={name}` to build `{name}.tex`.
