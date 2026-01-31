@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0sync-adapters.ps1" %*
