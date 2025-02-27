# Crear una contraseña segura
$Password = ConvertTo-SecureString "1234" -AsPlainText -Force

# Crear el usuario local
New-LocalUser -Name "prb005" -Password $Password -FullName "Nombre Completo" -Description "Descripción del usuario"

# Crear el grupo local
New-LocalGroup -Name "aso3" -Description "Descripción del grupo"

# Añadir el usuario al grupo
Add-LocalGroupMember -Group "aso" -Member "prb005"

# Eliminar el usuario del grupo
Remove-LocalGroupMember -Group "prb" -Member "prb002"

