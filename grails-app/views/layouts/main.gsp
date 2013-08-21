<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<style type="text/css">
		body {
			padding-top: 60px;
			padding-bottom: 40px;
		}
		</style>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">		
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'gtunes.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">		
		<g:layoutHead/>
		<r:layoutResources />		
		
	</head>
	<body>		

		<div class="navbar navbar-inverse navbar-fixed-top">
      		<div class="navbar-inner">
        		<div class="container">
          			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
          			</button>
          			<g:link class="brand" controller="store" action="index">
          				gTunes
          			</g:link>
          			<div class="nav-collapse collapse">
            			<ul class="nav">
              				<li class="active"><a href="#">Home</a></li>
              				<li><a href="#about">About</a></li>
          					<li><a href="#contact">Contact</a></li>
            			</ul>

            		<g:if test="${session?.user}">
						<ul class="nav">
							<li><g:link controller="user" action="music">My Music</g:link>
							</li>
							<li><g:link controller="store" action="shop">The Store</g:link>
							</li>
						</ul>
					</g:if>
					<g:else>
						<ul class="nav">
							<li>
								<g:link controller="user"
										class="btn"
										action="register">Signup</g:link>
							</li>
						</ul>
					</g:else>
						
            		<div class="navbar-form pull-right">
            		<g:if test="${session?.user}">
						<div style="margin-top:20px">
							<div style="float:right;">
								<a href="#">Profile</a> | <g:link controller="user" action="logout">Logout</g:link>
							</div>
							Welcome back <span id="userFirstName">${session?.user?.firstName}!</span>
						</div>
					</g:if>
					<g:else>
						<g:form 
							name="loginForm"
							url="[controller:'user', action:'login']">
							
							<g:textField name="login"
								 value="${fieldValue(bean:loginCmd, field:'login')}"
								 placeholder="Username">
							</g:textField>
							
							<g:passwordField name="password" placeholder="Password"></g:passwordField>							
							<input 
								type="submit" 
								class="btn btn-primary"
								value="Login"
								name="loginButton"
								id="loginButton"
								border='0'>
							</input>
						</g:form>
						<g:renderErrors bean="${loginCmd}"></g:renderErrors>
					</g:else>
					</div>
          			</div><!--/.nav-collapse -->
        		</div>
      		</div>
		</div>

		<g:layoutBody/>
		<g:javascript library="application"/>		
		<g:javascript src="bootstrap.js" />
		<r:layoutResources />

		<!--<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
		<g:layoutBody/>-->
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		
	</body>
</html>
