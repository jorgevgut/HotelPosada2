<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Sparkling
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20100529

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="keywords" content="" />

<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Hotel Posada</title>
<meta name="layout" content="vista"/>
</head>
<body>
					<div class="post">
                                          <div id="error"></div>
						<h2 class="title"><a href="#">Realizacion de Reservas</a></h2>
						<div style="clear: both;">&nbsp;</div>
						<div class="entry">
                                                  <p>Utiliza esta forma para reservar</p>
                                                  <form id="formaR"action="generar_reserva" method="post" onsubmit="return validar('¿Seguro que desea continuar?')" >
                                                    <table>
                                                    <tr><p>Ingresa tus datos:</p></tr>
                                                    <tr><td>Nombre:</td><td><input id="nombre"type="text" name="nombre"/></td></tr>
                                                    <tr><td>Desde el dia:</td>
                                                      <td><select name="fi_a"> <option value="2013">2013</option> </select>


                                                        <select id="fi_m"name="fi_m">
                                                          
                                                           <option value="1">1</option>
                                                            <option value="2">2</option>
                                                             <option value="3">3</option>
                                                              <option value="4">4</option>
                                                               <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                 <option value="7">7</option>
                                                                  <option value="8">8</option>
                                                                   <option value="9">9</option>
                                                                    <option value="10">10</option>
                                                                     <option value="11">11</option>
                                                                      <option value="12">12</option>
                                                        </select>

                                                         <select id="fi_d"name="fi_d">

                                                           <option value="1">1</option>
                                                            <option value="2">2</option>
                                                             <option value="3">3</option>
                                                              <option value="4">4</option>
                                                               <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                 <option value="7">7</option>
                                                                  <option value="8">8</option>
                                                                   <option value="9">9</option>
                                                                    <option value="10">10</option>
                                                                     <option value="11">11</option>
                                                                      <option value="12">12</option>
                                                           <option value="13">13</option>
                                                            <option value="14">14</option>
                                                             <option value="15">15</option>
                                                              <option value="16">16</option>
                                                               <option value="17">17</option>
                                                                <option value="18">18</option>
                                                                 <option value="19">19</option>
                                                                  <option value="20">20</option>
                                                                   <option value="21">21</option>
                                                                    <option value="22">22</option>
                                                                     <option value="23">23</option>
                                                                      <option value="24">24</option>
                                                          <option value="25">25</option>
                                                            <option value="26">26</option>
                                                             <option value="27">27</option>
                                                              <option value="28">28</option>
                                                               <option value="29">29</option>
                                                                <option value="30">30</option>
                                                                 <option value="31">31</option>
                                                          </select>


                                                        <a>aaa/mm/dd</a></td></tr>

                                                    <tr><td>Hasta el dia:</td>
                                                        <td><select name="ff_a"> <option value="2013">2013</option> </select>
                                                          
                                                              <select id="ff_m" name="ff_m">

                                                           <option value="1">1</option>
                                                            <option value="2">2</option>
                                                             <option value="3">3</option>
                                                              <option value="4">4</option>
                                                               <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                 <option value="7">7</option>
                                                                  <option value="8">8</option>
                                                                   <option value="9">9</option>
                                                                    <option value="10">10</option>
                                                                     <option value="11">11</option>
                                                                      <option value="12">12</option>
                                                        </select>


                                                          <select id="ff_d" name="ff_d">

                                                           <option value="1">1</option>
                                                            <option value="2">2</option>
                                                             <option value="3">3</option>
                                                              <option value="4">4</option>
                                                               <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                 <option value="7">7</option>
                                                                  <option value="8">8</option>
                                                                   <option value="9">9</option>
                                                                    <option value="10">10</option>
                                                                     <option value="11">11</option>
                                                                      <option value="12">12</option>
                                                           <option value="13">13</option>
                                                            <option value="14">14</option>
                                                             <option value="15">15</option>
                                                              <option value="16">16</option>
                                                               <option value="17">17</option>
                                                                <option value="18">18</option>
                                                                 <option value="19">19</option>
                                                                  <option value="20">20</option>
                                                                   <option value="21">21</option>
                                                                    <option value="22">22</option>
                                                                     <option value="23">23</option>
                                                                      <option value="24">24</option>
                                                          <option value="25">25</option>
                                                            <option value="26">26</option>
                                                             <option value="27">27</option>
                                                              <option value="28">28</option>
                                                               <option value="29">29</option>
                                                                <option value="30">30</option>
                                                                 <option value="31">31</option>
                                                          </select>
                                                         <a>aaaa/mm/dd</a></td></tr>
                                                    <tr><td>Habitacion</td>
                                                      <td><input type="radio" name="habitacion" value="sencilla"  checked>Sencilla</input>
                                                     <input type="radio" name="habitacion" value="doble">Doble</input>
                                                      </td>
                                                    </tr>
                                                    <tr><td>Categoría:</td>
                                                      <td>
                                                        <input type="radio" name="categoria" value="normal"  checked>normal</input>
                                                     <input type="radio" name="categoria" value="business">business</input>
                                                     <input type="radio" name="categoria" value="alta">alta</input></td>
                                                     </tr>
                                                    <tr><td>Incluir cama Infantil:</td>
                                                      <td><input type="radio" name="infantil" value="si">Si</input>
                                                     <input type="radio" name="infantil" value="no" checked>No</input></td>

                                                    </tr>
                                                  </table>
                                                    <input type="submit" value="Generar Reserva"/>
                                                  </form>
                                                    ${reserva}


						</div>
					</div>
</body>
</html>
