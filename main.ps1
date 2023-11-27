## Cmdlets:
ter informações sobre processos em execução
Get-Process

# Obter informações sobre serviços
Get-Service

# Listar itens em um diretório
Get-ChildItem

##Variaveis:
# Atribuir valor a uma variável
$variavel = "Olá, Mundo!"

# Acessar o valor da variável
echo $variavel


##Estruturas de Controle:
# Condição If
$idade = 20
if ($idade -lt 18) {
    Write-Host "Você é menor de idade."
}
elseif ($idade -ge 18) {
    Write-Host "Você é maior de idade."
}

# Loop foreach
$frutas = "Maçã", "Banana", "Pêra"
foreach ($fruta in $frutas) {
    Write-Host "Fruta: $fruta"
}

# Loop while
$contador = 1
while ($contador -le 5) {
    Write-Host "Contador: $contador"
    $contador++
}


##Filtros e Seleção:
# Filtrar processos com mais de 100 MB de uso de memória
Get-Process | Where-Object { $_.WorkingSet -gt 100MB }

# Selecionar apenas o nome e o status dos serviços
Get-Service | Select-Object DisplayName, Status


##Arrays e Listas:
# Declarar e usar arrays
$numeros = 1, 2, 3, 4, 5
Write-Host "Primeiro número: $($numeros[0])"

##Funções:
# Declarar uma função
function Saudacao {
    param($nome)
    Write-Host "Olá, $nome!"
}

# Chamar a função
Saudacao -nome "João"

##Pipeline:
# Encadear comandos usando a pipeline
Get-Service | Where-Object { $_.Status -eq 'Running' } | Stop-Service

##Arquivos e Diretórios:
# Ler o conteúdo de um arquivo
Get-Content -Path "C:\Caminho\Para\Seu\Arquivo.txt"

# Definir o conteúdo de um arquivo
"Novo conteúdo" | Set-Content -Path "C:\Caminho\Para\Seu\Arquivo.txt"

# Listar itens em um diretório
Get-ChildItem -Path "C:\Caminho\Para\Seu\Diretorio"

##Trabalhando com Serviços:
# Obter informações sobre serviços
Get-Service

# Iniciar um serviço
Start-Service -Name "NomeDoServico"

# Parar um serviço
Stop-Service -Name "NomeDoServico"

##Gerenciamento de Processos:
# Obter informações sobre processos em execução
Get-Process

# Encerrar um processo pelo nome
Stop-Process -Name "NomeDoProcesso"

##Manipulação de Strings:
# Concatenação de strings
$nome = "João"
$saudacao = "Olá, " + $nome + "!"

# Formatação de strings
$numero = 42
$mensagem = "O número é {0}" -f $numero

##Trabalhando com Registros do Sistema:
# Obter informações sobre um item do sistema de arquivos
Get-Item -Path "C:\Caminho\Para\Seu\Arquivo.txt"

# Criar um novo item no sistema de arquivos
New-Item -ItemType File -Path "C:\Caminho\Para\Seu\NovoArquivo.txt"

##Modo Remoto:
# Iniciar uma sessão remota
Enter-PSSession -ComputerName NomeDoComputador

# Executar comandos em um computador remoto
Invoke-Command -ComputerName NomeDoComputador -ScriptBlock { ComandosRemotos }

##Scripting e Arquivos de Script:
Crie um novo arquivo com a extensão .ps1 e coloque seus comandos PowerShell dentro dele. Por exemplo, MeuScript.ps1.

##Gerenciamento de Módulos:
# Importar um módulo
Import-Module NomeDoModulo

# Instalar um novo módulo
Install-Module -Name NomeDoModulo

# Obter uma lista de módulos importados
Get-Module
