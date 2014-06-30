<cf_layout>
	<cf_lessonToolbar />

	<div id="content">
		<h2>Login</h2>
		<form action="login.cfm" method="post">
			<input type="text" name="username" required />
			<input type="submit" value="Login" />
		</form>
		<h2>Search</h2>
		<form action="search.cfm" method="get">
			<input type="text" name="search" required />
			<input type="submit" value="Search" />
		</form>

	</div>
</cf_layout>