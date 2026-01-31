@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0validate-adapters.ps1" %*
