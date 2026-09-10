$prompt = "Explica qué es la arquitectura hexagonal en una API ASP.NET Core."

$models = @(
    "phi4",
    "gemma2:27b",
    "qwen3-coder"
)

foreach ($model in $models) {

    Write-Host "`n===== $model =====" -ForegroundColor Cyan

    $body = @{
        model  = $model
        prompt = $prompt
        stream = $false
    } | ConvertTo-Json -Compress

    Write-Host "Enviando, porfavor espere..."
    Write-Host $body

    $result = Invoke-WebRequest `
        -Uri "http://localhost:11434/api/generate" `
        -Method POST `
        -ContentType "application/json" `
        -Body $body

    Write-Host "Status: $($result.StatusCode)"

    $response = $result.Content | ConvertFrom-Json

    Write-Host "Tokens generados : $($response.eval_count)"
    Write-Host "Tiempo generación: $([math]::Round($response.eval_duration / 1000000000, 2)) s"

    $seconds = $response.eval_duration / 1000000000

    if ($seconds -gt 0) {
        $tps = $response.eval_count / $seconds
        Write-Host "Velocidad        : $([math]::Round($tps, 2)) tokens/s" -ForegroundColor Green
    }

    Write-Host "`nRespuesta:" -ForegroundColor Yellow
    Write-Host $response.response
}









