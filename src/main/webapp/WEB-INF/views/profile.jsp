<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">

<head>
<meta http-equiv=”Content-Type” content=”text/html; charset=ISO-8859-1″ />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
<link rel="icon" type="image/png" href="img/favicon.png">
<title>Perfil</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="${pageContext.request.contextPath}/css/nucleo-icons.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/nucleo-svg.css"
	rel="stylesheet" type="text/css" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle"
	href="${pageContext.request.contextPath}/css/material-dashboard.css?v=3.0.0"
	rel="stylesheet" />
</head>

	<body class="g-sidenav-show bg-gray-200">
		<aside
			class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3  ps bg-transparent"
			id="sidenav-main">

			<hr class="horizontal light mt-0 mb-2">
			<div class="collapse navbar-collapse  w-auto  max-height-vh-100"
				id="sidenav-collapse-main">
				<ul class="navbar-nav">

					<li class="nav-item"><a class="nav-link text-dark"
						href="${pageContext.request.contextPath}/ReservaListaController">
							<div
								class="text-white text-center me-2 d-flex align-items-center justify-content-center">
								<i class="material-icons opacity-10 text-dark">menu_book</i>
							</div> <span class="nav-link-text ms-1">Reservas</span>
					</a></li>
					<li class="nav-item"><a class="nav-link text-dark "
						href="${pageContext.request.contextPath}/EmpleadoHomeController">
							<div
								class="text-white text-center me-2 d-flex align-items-center justify-content-center">
								<i class="material-icons opacity-10 text-dark">badge</i>
							</div> <span class="nav-link-text ms-1">Empleados</span>
					</a></li>
					<li class="nav-item"><a class="nav-link text-dark "
						href="${pageContext.request.contextPath}/ClienteHomeController">
							<div
								class="text-white text-center me-2 d-flex align-items-center justify-content-center">
								<i class="material-icons opacity-10 text-dark">groups</i>
							</div> <span class="nav-link-text ms-1">Clientes</span>
					</a></li>
					<li class="nav-item"><a class="nav-link text-text-dark "
						href="${pageContext.request.contextPath}/FacturaHomeController">
							<div
								class="text-dark text-center me-2 d-flex align-items-center justify-content-center">
								<i class="material-icons opacity-10 text-dark">receipt</i>
							</div> <span class="nav-link-text ms-1 text-dark">Facturas</span>
					</a></li>
					<li class="nav-item mt-3">
						<h6
							class="ps-4 ms-2 text-uppercase text-xs text-dark font-weight-bolder opacity-8">Usuarios</h6>
					</li>
					<li class="nav-item"><a
						class="nav-link text-dark active bg-gradient-primary"
						href="${pageContext.request.contextPath}/UsuarioHomeController">
							<div
								class="text-white text-center me-2 d-flex align-items-center justify-content-center">
								<i class="material-icons opacity-10 text-dark">person</i>
							</div> <span class="nav-link-text ms-1">Perfil</span>
					</a></li>
					<li class="nav-item"><a class="nav-link text-dark "
						href="${pageContext.request.contextPath}/Registro">
							<div
								class="text-white text-center me-2 d-flex align-items-center justify-content-center">
								<i class="material-icons opacity-10 text-dark">groups</i>
							</div> <span class="nav-link-text ms-1">Registrar Nuevo Cliente</span>
					</a></li>
					<li class="nav-item"><a class="nav-link text-dark "
						href="${pageContext.request.contextPath}/EmpleadoRegistrarSeguroController">
							<div
								class="text-white text-center me-2 d-flex align-items-center justify-content-center">
								<i class="material-icons opacity-10 text-dark">assignment</i>
							</div> <span class="nav-link-text ms-1">Registrar Nuevo Empleado</span>
					</a></li>
					<div class="sidenav-footer position-absolute w-100 bottom-0 ">
						<div class="mx-3">
						<c:url value="/Sesion_cerrada" var="sesion" />
                            <form class="container" action="${sesion}" method="POST">
                            	<button type="submit" class="btn bg-gradient-primary mt-4 w-100">Cerrar Sesi&oacute;n</button>
							</form>
						</div>

					</div>
				</ul>
			</div>
		</aside>

		<div
			class="main-content position-relative bg-gray-100 max-height-vh-100 h-100">
			<!-- 		Inicio barra móviles -->
			<nav
				class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
				id="navbarBlur" navbar-scroll="true">
				<div class="container-fluid py-1 px-3">
					<nav aria-label="breadcrumb">
						<ol
							class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
							<li class="breadcrumb-item text-sm"><a
								class="opacity-5 text-dark" href="javascript:;">VO -  ${user.datosusuario.nombre}</a></li>
							<li class="breadcrumb-item text-sm text-dark active"
								aria-current="page">Perfil</li>
						</ol>
						<h6 class="font-weight-bolder mb-0">Informaci&oacute;n
							general</h6>
					</nav>
					<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
						id="navbar">

						<ul class="navbar-nav  justify-content-end">
							<li class="nav-item d-xl-none ps-3 d-flex align-items-center">
								<a href="javascript:;" class="nav-link text-body p-0"
								id="iconNavbarSidenav">
									<div class="sidenav-toggler-inner">
										<i class="sidenav-toggler-line"></i> <i
											class="sidenav-toggler-line"></i> <i
											class="sidenav-toggler-line"></i>
									</div>
							</a>
							</li>


						</ul>
					</div>
				</div>
			</nav>
			<!-- 		fin barra móviles -->
			<div class="container-fluid py-4">
				<div class="row">
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card">
							<div class="card-header p-3 pt-2">
								<div
									class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n5 position-absolute">
									<i class="material-icons opacity-10">menu_book</i>
								</div>
								<div class="text-end pt-1">
									<p class="text-sm mb-0 text-capitalize">Cliente m&aacute;s
										habitual</p>
									<c:forEach items="${topclientes}" var="top">
									<c:forEach items="${topclientes2}" var="top2">
											<h6>El cliente con id: ${top}, ha hecho: ${top2}
												reservas.</h6>
									</c:forEach>
									</c:forEach>
								</div>
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<span class="text-success text-sm font-weight-bolder"></span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card">
							<div class="card-header p-3 pt-2">
								<div
									class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n5 position-absolute">
									<i class="material-icons opacity-10">people_alt</i>
								</div>
								<div class="text-end pt-1">
									<p class="text-sm mb-0 text-capitalize">Clientes totales</p>
									<c:forEach items="${totalcliente}" var="usuarios">
										<h4 class="mb-0">${usuarios}</h4>
									</c:forEach>
								</div>
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<span class="text-success text-sm font-weight-bolder"></span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card">
							<div class="card-header p-3 pt-2">
								<div
									class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n5 position-absolute">
									<i class="material-icons opacity-10">badge</i>
								</div>
								<div class="text-end pt-1">

									<p class="text-sm mb-0 text-capitalize">Total Empleados</p>
									<c:forEach items="${totalempleado}" var="empleados">
										<h4 class="mb-0">${empleados}</h4>
									</c:forEach>
								</div>
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<span class="text-danger text-sm font-weight-bolder"></span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card">
							<div class="card-header p-3 pt-2">
								<div
									class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n5 position-absolute">
									<i class="material-icons opacity-10">account_balance_wallet</i>
								</div>
								<div class="text-end pt-1">
									<p class="text-sm mb-0 text-capitalize">Dinero Total (Mes)</p>
									<c:forEach items="${totaldineromes}" var="dineroenmes">
										<h4 class="mb-0">${dineroenmes}&euro;</h4>
									</c:forEach>
								</div>
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<span class="text-success text-sm font-weight-bolder"></span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid px-2 px-md-4">
				<div class="page-header min-height-300 border-radius-xl mt-4"
					style="background-image: url('${pageContext.request.contextPath}/image/fondoperfil.jpg');">
					<span class="mask  bg-gradient-primary  opacity-6"></span>
				</div>
				<div class="card card-body mx-3 mx-md-4 mt-n6">
					<div class="row gx-4 mb-2">
						<div class="col-auto"></div>
						<div class="col-auto my-auto">
							<div class="h-100">
								<h5 class="mb-1">Bienvenido/a</h5>
								<p class="mb-0 font-weight-normal ">${datosusuario.nombre}</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="row">

							<div class="col-12 col-xl-4">
								<div class="card card-plain h-100">
									<div class="card-header pb-0 p-3">
										<div class="row">
											<div class="col-md-8 d-flex align-items-center">
												<h6 class="mb-0">Informaci&oacute;n del perfil</h6>
											</div>
											<div class="col-md-3 text-end">
												<li class="nav-item px-3 d-flex align-items-center">


													<button onclick="myFunction()" class="btn btn-light">
														<i
															class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
													</button>


												</li>

											</div>
										</div>
									</div>
									<div class="">
										<hr>
										<ul class="list-group">
											<li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong
												class="text-dark">Nombre:</strong> &nbsp;
												${nombre}</li>
										</ul>
									</div>
								</div>
							</div>
							<div id="myDIV" class="col-12 col-xl-4" style="display: none">
								<div class="card card-plain h-100">
									<div class="card-header pb-0 p-3"></div>
									<div class="card-body p-3">
										<hr class="horizontal gray-light">
										<c:url value="/usuario/update" var="updateUrl" />
										<form class="container" action="${updateUrl}" method="POST">
											<div class="row justify-content-center mb-4">
												<table>
													<tr>
														<td>Nuevo usuario:</td>
														<td><input type="text" name="username"
															autocomplete="off" class="form-control mx-sm-3"
															style="border: 1px solid #7b809a;"></td>
													</tr>
													<tr>
														<td>Contrase&ntilde;a actual:</td>
														<td><input type="password" name="passwordAntigua"
															class="form-control mx-sm-3"
															style="border: 1px solid #7b809a;" required></td>
													</tr>
													<tr>
														<td>Nueva contrase&ntilde;a:</td>
														<td><input type="password" name="password"
															class="form-control mx-sm-3"
															style="border: 1px solid #7b809a;"></td>
													</tr>

												</table>
											</div>

											<div class="container row justify-content-center">


												<button type="button" class="btn bg-gradient-primary"
													data-bs-toggle="modal" data-bs-target="#exampleModal">Modificar</button>
											</div>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">Modificar
																Usuario</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">Va a modificar su usuario,
															&#191;Est&aacute; seguro/a?</div>
														<div class="modal-footer">
															<div
																class="d-grid gap-2 d-md-flex justify-content-md-end">
																<button type="button" class="btn btn-secondary"
																	data-bs-dismiss="modal">Cancelar</button>
																<c:url value="/editarempleado" var="UpdateUserUrl" />
																<form action="${UpdateUserUrl}">
																	<button type="submit" name="submit"
																		class="btn btn-success" value="Modificar">Modificar</button>
																</form>
															</div>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
		<!--   Core JS Files   -->
		<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/perfect-scrollbar.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/smooth-scrollbar.min.js"></script>
		<script>
			var win = navigator.platform.indexOf('Win') > -1;
			if (win && document.querySelector('#sidenav-scrollbar')) {
				var options = {
					damping : '0.5'
				}
				Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
						options);
			}
		</script>
		<script>
			function myFunction() {
				var x = document.getElementById("myDIV");
				if (x.style.display === "none") {
					x.style.display = "block";
				} else {
					x.style.display = "none";
				}
			}
		</script>
		<!-- Github buttons -->
		<script async defer src="https://buttons.github.io/buttons.js"></script>
		<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
		<script src="js/material-dashboard.min.js?v=3.0.0"></script>
	</body>
</html>