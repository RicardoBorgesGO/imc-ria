<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IMC</title>
</head>
<body>

	<h1>Calculo IMC</h1>

	<form>
		<label for="peso">Peso:</label> <input type="text" id="peso"
			name="peso"> <br /> <label for="altura">Altura:</label> <input
			type="text" id="altura" name="altura"> <br /> <input
			type="submit" value="Calcular">
	</form>
	<%
		String altura = request.getParameter("altura");
		String peso = request.getParameter("peso");

		if (altura != null && peso != null) {
			double alturaThis = Double.parseDouble(altura);
			double pesoThis = Double.parseDouble(peso);

			double imc = pesoThis / Math.pow(alturaThis, 2);
			out.println("IMC: " + imc);
		} else {
	%>
	<h3>Informe os valores para calcular o IMC</h3>
	<%
		}
	%>
</body>
</html>