Clear-Host

# NOTA IMPORTANTE => Hay muchas cosas a mejorar. Es la versión 1

$csvPath = ".\usuarios.csv"

# Verificar si el archivo CSV existe
if (-not (Test-Path $csvPath)) {
    Write-Host "El archivo CSV no existe en la ruta especificada: $csvPath" -ForegroundColor Red
    exit
}

try {
    $usuarios = Import-Csv -Path $csvPath -Delimiter "," -Header "usuario","contraseña","grupo_secundario" | Select-Object -Skip 1
} catch {
    Write-Host "Error al leer el archivo CSV"
    exit
}


foreach ($user in $usuarios) {
    $usu = $user.usuario.Trim()
    $contra = $user.contraseña.Trim()
    $grp = $user.grupo_secundario.Trim()

    Write-Host "Procesando usuario: $usu" 

    try {
        
        $contras = ConvertTo-SecureString -String $contra -AsPlainText -Force
                
        New-LocalUser -Name $usu -Password $contras 
        
        Write-Host "Usuario $usu creado" 

       
        Add-LocalGroupMember -Group $grp -Member $usu
        Write-Host "Usuario $usu añadido al grupo $grp."

    } catch {
        Write-Host "Error al procesar el usuario $usu"
    }
}
