from openai import OpenAI
import os

endpoint        = os.environ["AZURE_OPENAI_ENDPOINT"]
deployment_name = os.environ["AZURE_OPENAI_DEPLOYNAME"]
api_key         = os.environ["AZURE_OPENAI_API_KEY"]

client = OpenAI(
    base_url=endpoint,
    api_key=api_key
)

response = client.responses.create(
    model=deployment_name,
    input="¿Por qué la gallina cruzó el camino?",
)

print(f"answer: {response.output_text}")
