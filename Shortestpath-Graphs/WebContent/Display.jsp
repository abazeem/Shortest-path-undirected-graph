<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Demo.Graph"%>
<%@ page import="Demo.ImgGraph"%>
<%@ page import="Demo.LoadGraph"%>
<%@ page import="Demo.Output"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
	String SR = request.getParameter("sr");
	String TR = request.getParameter("tr");
	int s = Integer.parseInt(SR);
	int t = Integer.parseInt(TR);
	int nodes = 9;
	Graph graph = new Graph(nodes);
	LoadGraph loadg = new LoadGraph();
	graph = loadg.load(graph);
	ImgGraph obj = new ImgGraph();
	String result = obj.implement(graph, s, t);	
	out.println(result);
%>