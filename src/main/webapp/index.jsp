<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>xmlEditor</title>
    <link href="<c:url value="resources/css/reset.css" />" rel="stylesheet">
    <link href="<c:url value="resources/css/demo.css" />" rel="stylesheet">
    <link href="<c:url value="resources/css/jquery.xmleditor.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/ace/src-min/ace.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
    <script src="<c:url value="/resources/js/json2.js" />"></script>
    <script src="<c:url value="/resources/js/cycle.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.autosize-min.js" />"></script>
    <script src="<c:url value="/resources/xsd/xsd2json.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.xmleditor.js" />"></script>
</head>
<body>
<div class="wrapper">
    <header>
        <h1>xmlEditor v 1.0(commit test)</h1>
    </header>
</div>
<div id="xml_editor">
    <mods/>
</div>
</div>
<script>
    $(function() {
        var extractor = new Xsd2Json("schema.xsd", {"schemaURI":"resources/xsd/"});

        $("#xml_editor").xmlEditor({
            schema: extractor.getSchema()
        });
    });
</script>
<footer/>
</body>
</html>