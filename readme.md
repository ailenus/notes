Dependencies for building: LuaLaTeX, GNU Make

On Windows, use command `make os=win name={name}` to build `{name}.tex`. Note that the `open` target opens the compiled
PDF with Sumatra PDF, which has a PowerShell alias set to `sumatra` with the following PowerShell profile configuration:

```New-Alias -Name sumatra -Value "C:\Program Files\SumatraPDF\SumatraPDF.exe"```

On macOS, use command `make os=mac name={name}` to build `{name}.tex`.
