
<?php
	
	require 'controllers/controller_usuario.php';

	?>
<html>
		<head>
		
				<title><?=$titulo?></title>
				<meta charset="UTF-8">
				
				<link rel="stylesheet" href ="public/css.css" type="text/css" />
		</head>


		<body> 
		
			<div id="container">
			
			<h3>Consulta de Usuarios Ativos</h3>
			
				<table border="1">
					
							<tr bgcolor="#999dse">
							<td>ID</td>
							<td>Nome</td>
							<td>Sobrenome</td>
							<td>Usuário</td>
							<td>senha</td>
							<td>Email</td>
							<td>Status</td>
					</tr>
			
			<?php
				$dado = DBRead('user', "WHERE status = 1");
				if (!$dado)
					echo '<h2>Nenhuma usuario encontrada!!</h2>';
				
					else
						
						foreach($dado as $dado):
						?>
			
						<tr>
							<td><?=$dado["id"];?></td>
							<td><?=$dado["nome"];?></td>
							<td><?=$dado["sobrenome"];?></td>
							<td><?=$dado["usuario"];?></td>
							<td><?=$dado["senha"];?></td>
							<td><?=$dado["email"];?></td>
							<td><?=$dado["status"];?></td>
						</tr>
			
			<?php 
					endforeach;
			?>
			
			</table>
			
			</div><!-- Container-->
	</body>

</html>