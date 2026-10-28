# Script: auto_report.ps1
# Tac gia: Le Hong Quan
# Ngay tao: 28/10/2026

Write-Host "Dang loc log..."

"===BAO CAO LOI==="> auto_repot.txt
Get-Content logs/carwash.log | Select-String "ERROR" >> logs/auto_report.txt

Write-Host "Hoan thanh!"