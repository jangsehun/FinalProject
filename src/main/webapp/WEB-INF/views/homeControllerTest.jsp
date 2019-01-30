<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Touch Swipeable Sidebar Menu Demo</title>

<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<style type="text/css">
input[type="checkbox"]#menu_state {
  display: none;
}
input[type="checkbox"]:checked ~ nav {
  width: 250px;
}
input[type="checkbox"]:checked ~ nav label[for="menu_state"] i::before {
  content: "\f053";
}
input[type="checkbox"]:checked ~ nav ul {
  width: 100%;
}
input[type="checkbox"]:checked ~ nav ul li a i {
  border-right: 1px solid #2f343e;
}
input[type="checkbox"]:checked ~ nav ul li a span {
  opacity: 1;
  transition: opacity 0.25s ease-in-out;
}
input[type="checkbox"]:checked ~ main {
  left: 250px;
}
nav {
  position: fixed;
  z-index: 9;
  top: 0;
  left: 0;
  bottom: 0;
  background: #383e49;
  color: #9aa3a8;
  width: 50px;
  font-family: 'Montserrat', sans-serif;
  font-weight: lighter;
  transition: all 0.15s ease-in-out;
}
nav label[for="menu_state"] i {
  cursor: pointer;
  position: absolute;
  top: 50%;
  right: -8px;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  background: #fff;
  font-size: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 15px;
  width: 15px;
  border-radius: 50%;
  border: 1px solid #ddd;
  transition: width 0.15s ease-in-out;
  z-index: 1;
}
nav label[for="menu_state"] i::before {
  margin-top: 2px;
  content: "\f054";
}
nav label[for="menu_state"] i:hover {
  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
}
nav ul {
  overflow: hidden;
  display: block;
  width: 50px;
  list-style-type: none;
  padding: 0;
  margin: 0;
}
nav ul li {
  border: 1px solid #2f343e;
  position: relative;
}
nav ul li.unread:after {
  content: attr(data-content);
  position: absolute;
  top: 10px;
  left: 25px;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  color: #fff;
  background: #ef5952;
  font-size: 8px;
}
nav ul li:not(:last-child) {
  border-bottom: none;
}
nav ul li.active a {
  background: #4c515d;
  color: #fff;
}
nav ul li a {
  position: relative;
  display: block;
  white-space: nowrap;
  text-decoration: none;
  color: #9aa3a8;
  height: 50px;
  width: 100%;
  transition: all 0.15s ease-in-out;
}
nav ul li a:hover {
  background: #4c515d;
  color: #fff;
}
nav ul li a * {
  height: 100%;
  display: inline-block;
}
nav ul li a i {
  text-align: center;
  width: 50px;
  z-index: 999999;
}
nav ul li a i.fa {
  line-height: 50px;
}
nav ul li a span {
  padding-left: 25px;
  opacity: 0;
  line-height: 50px;
  transition: opacity 0.1s ease-in-out;
}
main {
  position: absolute;
  transition: all 0.15s ease-in-out;
  top: 0;
  left: 50px;
}
main header {
  position: absolute;
  z-index: -1;
  height: 400px;
  background-size: cover;
  background-position: 50% 50%;
  background-repeat: no-repeat;
}
main section {
  background: #fff;
  padding: 25px;
  font-family: helvetica;
  font-weight: lighter;
  padding: 50px;
  margin: 150px 75px;
  transition: all 0.15s ease-in-out;
}
main section h1 {
  padding-top: 0;
  margin-top: 0;
  font-weight: lighter;
}

</style>
</head>
<body>
<input type="checkbox" id="menu_state" checked>
<nav>
	<label for="menu_state"><i class="fa"></i></label>
	<ul>
		<li data-content="5" class="active unread">
			<a href="javascript:void(0)">
				<i class="fa fa-inbox"></i>
				<span>Inbox</span>
			</a>
		</li>
		<li>
			<a href="javascript:void(0)">
				<i class="fa fa-heart"></i>
				<span>Favorites</span>
			</a>
		</li>
		<li>
			<a href="javascript:void(0)">
				<i class="fa fa-paper-plane"></i>
				<span>Sent</span>
			</a>
		</li>
		<li>
			<a href="javascript:void(0)">
				<i class="fa fa-pencil"></i>
				<span>Draft</span>
			</a>
		</li>
		<li data-content="2" class="unread">
			<a href="javascript:void(0)">
				<i class="fa fa-trash"></i>
				<span>Trash</span>
			</a>
		</li>
	</ul>
</nav>
<main>
	<header>내 업체 정보</header>
	<section>
		<h1>Proin sodales velit vel nisi bibendum tempor</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique massa eget volutpat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed consectetur turpis nulla, a euismod nisi sollicitudin eu. Aliquam elit neque, tristique nec venenatis ut, pharetra vitae enim. Fusce non urna in odio euismod finibus eget vel tortor. Quisque a purus ipsum. Donec ante nibh, porta eget magna non, pharetra sodales ante. Phasellus erat massa, venenatis et velit et, tincidunt finibus lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer luctus facilisis bibendum. Integer in arcu pharetra tellus auctor bibendum sed sed turpis. Vestibulum imperdiet lacus lectus, vitae ultricies nisi eleifend et. Mauris rhoncus nec eros quis dictum. Proin sodales velit vel nisi bibendum tempor. Aenean tristique ipsum nec dictum vehicula.</p>

		<p>Nullam sed metus a dui auctor sodales quis nec tellus. Duis porttitor tortor pulvinar auctor mattis. Sed ultrices urna in augue venenatis tempus. Proin fringilla sodales eros. Ut aliquet odio nec sagittis dictum. Cras ullamcorper, neque ac imperdiet hendrerit, sapien nunc porta sapien, quis maximus nulla purus sit amet lectus. Mauris rhoncus lectus non vehicula lacinia. Suspendisse eu mollis ex, sit amet ultrices lorem. Cras elit risus, bibendum ut massa nec, commodo commodo augue.</p>

		<p>Sed lacinia, ligula id venenatis auctor, libero turpis aliquet nunc, sit amet ullamcorper dolor ligula quis felis. Vivamus condimentum mi vel felis vehicula, eu placerat lacus semper. Sed quis lacinia mauris. Donec aliquam vulputate metus, non imperdiet lorem maximus a. Integer eget dignissim erat. Proin id finibus dui, pretium consectetur turpis. Vivamus in tincidunt odio, eu iaculis nisi. Integer in scelerisque mauris. Vivamus ac eros congue, mattis nisl ac, venenatis lacus.</p>

		<p>Nunc viverra vestibulum tempor. Nulla consectetur sit amet mauris at rutrum. Mauris eu rhoncus eros. Integer convallis magna ac tincidunt laoreet. Proin molestie vitae erat id venenatis. Donec eu imperdiet risus. Fusce gravida placerat dui eget sollicitudin. Cras leo ligula, laoreet dapibus euismod ut, vehicula sit amet nunc. Maecenas in nisl fringilla, aliquet diam ut, facilisis ex. In dui risus, porttitor convallis ultricies nec, ornare eu leo.</p>
	</section>
</main>
</body>
</html>
