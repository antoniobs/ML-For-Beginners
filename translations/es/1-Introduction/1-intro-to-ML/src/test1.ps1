$body = @{
    model  = "qwen3-coder"
    prompt = "¿Eres un agente de coding o un autocomplete con complejo de arquitecto?"
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
Write-Host "Raw response:"
Write-Host $result.Content

# Response:
# {"model":"qwen3-coder","created_at":"2026-09-10T07:07:44.1017727Z","response":"Jeje, esa es una pregunta muy interesante y con un toque de humor que me gusta. En realidad, no soy ni un agente de coding ni un autocomplete con complejo de arquitecto... al menos no en el sentido tradicional.\n\nSoy un modelo de lenguaje grande, entrenado para entender y generar texto coherente, útil y a menudo creativo. Puedo ayudarte a escribir código, explicar conceptos, resolver problemas o simplemente charlar sobre cualquier tema. Pero mi \"personalidad\" es más bien una combinación de utilidad, precisión y un poco de curiosidad intelectual.\n\nSi me preguntas algo técnico, como cómo funciona un algoritmo o qué significa una línea de código, puedo darte una respuesta clara y concisa. Si lo que necesitas es una solución arquitectónica o una idea innovadora, también puedo intentar aportar algo útil en ese sentido. Pero no me considero ni un agente de coding ni un autocomplete con complejo de arquitecto — más bien soy una herramienta versátil, con la capacidad de adaptarme a lo que necesitas.\n\n¿Quieres que te ayude con algo específico hoy?","done":true,"done_reason":"stop","context":[151644,872,198,30182,36,416,650,933,6817,409,10822,297,650,31705,390,1907,7305,409,796,446,8360,78,30,151645,198,151644,77091,198,29754,3756,11,49880,1531,5093,79340,22506,49416,4942,379,390,650,311,591,409,27385,1709,752,69658,13,2925,80504,11,902,28739,12788,650,933,6817,409,10822,12788,650,31705,390,1907,7305,409,796,446,8360,78,1112,452,31795,902,662,655,64384,4685,62793,382,50,2253,650,35942,409,326,27004,11058,24604,11,93821,2123,3348,95437,379,94979,32025,1062,1923,6817,11,137741,379,264,2953,7680,6056,6496,13,393,3260,78,58137,19840,264,65771,43855,44059,11,55269,277,7286,436,11,36220,53769,297,70257,68,1161,13796,15131,45909,45915,13,55432,9497,330,29612,5845,1,1531,10918,14370,5093,67125,5721,409,4094,5845,11,20234,3655,379,650,38794,409,2847,3530,5845,526,18957,928,382,21999,752,19978,54572,27928,133251,11,7953,54896,86896,650,452,86415,6355,297,42288,67732,5093,55162,409,44059,11,80815,294,19840,5093,43360,1185,5059,379,3529,10761,13,11832,775,1709,24223,21226,1531,5093,142706,796,446,8360,91963,297,5093,4522,9529,29813,11,28471,80815,7385,277,264,403,277,27928,137741,662,41818,64384,13,55432,902,752,2908,78,12788,650,933,6817,409,10822,12788,650,31705,390,1907,7305,409,796,446,8360,78,1959,10918,14370,28739,5093,81990,64,5436,1953,1646,11,390,1187,82292,409,10515,73860,264,775,1709,24223,21226,382,30182,2183,64488,1709,1013,18898,793,390,27928,140947,48741,30],"total_duration":48799483300,"load_duration":33523400,"prompt_eval_count":28,"prompt_eval_cached_count":27,"prompt_eval_duration":135829000,"eval_count":259,"eval_duration":32888811000}
