<?xml version="1.0" encoding="UTF-8"?>
<!--
CAUTION: Do not modify this file unless you know what you are doing.
         Unexpected results may occur if the code is changed deliberately.
-->
<dbmodel>
<database name="new_database" encoding="UTF8">
</database>

<table name="variedades" oids="false">
	<schema name="public"/>
	<position x="1300" y="340"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="origen">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="situacion">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cultivo">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="poda">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="multiplicacion">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkva" type="pk-constr" factor="10" table="public.variedades">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="carrito" oids="false">
	<schema name="public"/>
	<position x="800" y="720"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="fecha">
		<type name="date" spatial-type="POINT" variation="0"/>
	</column>
	<column name="valor_total">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="producto_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="servicio_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="usuario_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcarrito" type="pk-constr" factor="10" table="public.carrito">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="cat_producto" oids="false">
	<schema name="public"/>
	<position x="1220" y="40"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="imagen_cat">
		<type name="char" length="100" spatial-type="POINT" variation="0"/>
	</column>
	<column name="tipo">
		<type name="char" length="2" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcatprod" type="pk-constr" factor="10" table="public.cat_producto">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="auth_user" oids="false">
	<schema name="public"/>
	<position x="520" y="360"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="password">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="username">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="is_active">
		<type name="boolean" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkauthuser" type="pk-constr" factor="10" table="public.auth_user">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="servicio" oids="false">
	<schema name="public"/>
	<position x="340" y="840"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="codigo">
		<type name="char" length="5" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="costo">
		<type name="double precision" spatial-type="POINT" variation="0"/>
	</column>
	<column name="tiempo">
		<type name="timestamp" spatial-type="POINT" variation="0"/>
	</column>
	<column name="descripcion">
		<type name="char" length="2000" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cat_servicio_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkservicio" type="pk-constr" factor="10" table="public.servicio">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="producto" oids="false">
	<schema name="public"/>
	<position x="800" y="300"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="codigo">
		<type name="char" length="5" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre_comun">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre_cientifico">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="altura_maxima">
		<type name="char" length="10" spatial-type="POINT" variation="0"/>
	</column>
	<column name="agua">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="sol">
		<type name="char" spatial-type="POINT" variation="0"/>
	</column>
	<column name="crecimiento">
		<type name="char" length="5" spatial-type="POINT" variation="0"/>
	</column>
	<column name="detalle">
		<type name="char" length="5000" spatial-type="POINT" variation="0"/>
	</column>
	<column name="costo">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cantidad">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="imagen">
		<type name="char" length="100" spatial-type="POINT" variation="0"/>
	</column>
	<column name="imagen1">
		<type name="char" length="100" spatial-type="POINT" variation="0"/>
	</column>
	<column name="imagen2">
		<type name="char" length="100" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cat_producto_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="varidedad_id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkproducto" type="pk-constr" factor="10" table="public.producto">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="foro" oids="false">
	<schema name="public"/>
	<position x="320" y="580"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="fecha">
		<type name="date" spatial-type="POINT" variation="0"/>
	</column>
	<column name="tema">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="comentario">
		<type name="char" length="500" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cat_foro_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="usuario_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkforo" type="pk-constr" factor="10" table="public.foro">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="cotizacion" oids="false">
	<schema name="public"/>
	<position x="1300" y="540"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="costo_total">
		<type name="double precision" spatial-type="POINT" variation="0"/>
	</column>
	<column name="fecha">
		<type name="date" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcotizacion" type="pk-constr" factor="10" table="public.cotizacion">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="cotizacion_detalle" oids="false">
	<schema name="public"/>
	<position x="1180" y="800"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cantidad">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="valor_unitario">
		<type name="double precision" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cotizacion_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="producto_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="servicio_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcotdetalle" type="pk-constr" factor="10" table="public.cotizacion_detalle">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="comentario" oids="false">
	<schema name="public"/>
	<position x="760" y="40"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="tema">
		<type name="char" length="10" spatial-type="POINT" variation="0"/>
	</column>
	<column name="fecha">
		<type name="date" spatial-type="POINT" variation="0"/>
	</column>
	<column name="descripcion">
		<type name="char" length="500" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cproducto_ip">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cusuario_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcomentario" type="pk-constr" factor="10" table="public.comentario">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="cliente" oids="false">
	<schema name="public"/>
	<position x="300" y="20"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="apellido">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="correo">
		<type name="char" length="30" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cedula">
		<type name="smallint" dimension="10" spatial-type="POINT" variation="0"/>
	</column>
	<column name="telefono">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="usuario_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcliente" type="pk-constr" factor="10" table="public.cliente">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="cat_servicio" oids="false">
	<schema name="public"/>
	<position x="40" y="720"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre">
		<type name="char" length="10" spatial-type="POINT" variation="0"/>
	</column>
	<column name="codigo">
		<type name="char" length="5" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcatservicio" type="pk-constr" factor="10" table="public.cat_servicio">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<table name="cat_foro" oids="false">
	<schema name="public"/>
	<position x="0" y="340"/>
	<column name="id" not-null="true">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="fecha">
		<type name="date" spatial-type="POINT" variation="0"/>
	</column>
	<column name="nombre">
		<type name="char" length="20" spatial-type="POINT" variation="0"/>
	</column>
	<column name="descripcion">
		<type name="char" length="30" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cat_foro_padre_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<column name="cliente_id">
		<type name="smallint" spatial-type="POINT" variation="0"/>
	</column>
	<constraint name="pkcatforo" type="pk-constr" factor="10" table="public.cat_foro">
		<columns names="id" ref-type="src-columns"/>
	</constraint>
</table>

<constraint name="fkproducto" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.producto" table="public.carrito">
	<columns names="producto_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_carrito_producto"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.carrito"
	 dst-table="public.producto"/>

<constraint name="fkservicio" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.servicio" table="public.carrito">
	<columns names="servicio_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_carrito_servicio"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.carrito"
	 dst-table="public.servicio"/>

<constraint name="fkusuario" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.auth_user" table="public.carrito">
	<columns names="usuario_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_carrito_auth_user"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.carrito"
	 dst-table="public.auth_user"/>

<constraint name="fkcusuario" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.auth_user" table="public.comentario">
	<columns names="cusuario_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_comentario_auth_user"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.comentario"
	 dst-table="public.auth_user"/>

<constraint name="fkcproducto" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.producto" table="public.comentario">
	<columns names="cproducto_ip" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_comentario_producto"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.comentario"
	 dst-table="public.producto"/>

<constraint name="fkcusuario" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.auth_user" table="public.cliente">
	<columns names="usuario_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_cliente_auth_user"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.cliente"
	 dst-table="public.auth_user"/>

<constraint name="fkpcatproducto" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.cat_producto" table="public.producto">
	<columns names="cat_producto_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_producto_cat_producto"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.producto"
	 dst-table="public.cat_producto"/>

<constraint name="fkcatcatforo" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.cat_foro" table="public.cat_foro">
	<columns names="cat_foro_padre_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_cat_foro_cat_foro"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.cat_foro"
	 dst-table="public.cat_foro">
	<line>
		<position x="246" y="380.16"/>
	<position x="246" y="330"/>
	<position x="157.333" y="330"/>
	</line>
	<label ref-type="name-label">
		<position x="90.4764" y="29.8001"/>
	</label>
</relationship>

<constraint name="fkcfcliente" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.cliente" table="public.cat_foro">
	<columns names="cliente_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_cat_foro_cliente"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.cat_foro"
	 dst-table="public.cliente"/>

<constraint name="fkfcatforo" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.cat_foro" table="public.foro">
	<columns names="cat_foro_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_foro_cat_foro"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.foro"
	 dst-table="public.cat_foro"/>

<constraint name="fkfusuario" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.auth_user" table="public.foro">
	<columns names="usuario_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_foro_auth_user"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.foro"
	 dst-table="public.auth_user"/>

<constraint name="fkcdcotizacion" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.cotizacion" table="public.cotizacion_detalle">
	<columns names="cotizacion_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_cotizacion_detalle_cotizacion"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.cotizacion_detalle"
	 dst-table="public.cotizacion"/>

<constraint name="fkcdproducto" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.producto" table="public.cotizacion_detalle">
	<columns names="producto_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_cotizacion_detalle_producto"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.cotizacion_detalle"
	 dst-table="public.producto"/>

<constraint name="pkcdservicio" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.servicio" table="public.cotizacion_detalle">
	<columns names="servicio_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_cotizacion_detalle_servicio"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.cotizacion_detalle"
	 dst-table="public.servicio"/>

<constraint name="pkscatservicio" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.cat_servicio" table="public.servicio">
	<columns names="cat_servicio_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_servicio_cat_servicio"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.servicio"
	 dst-table="public.cat_servicio"/>

<constraint name="fkpvariedad" type="fk-constr"	 comparison-type="MATCH FULL"
	 upd-action="CASCADE" del-action="CASCADE" ref-table="public.variedades" table="public.producto">
	<columns names="varidedad_id" ref-type="src-columns"/>
	<columns names="id" ref-type="dst-columns"/>
</constraint>
<relationship name="rel_producto_variedades"
	 type="relfk"
	 src-required="false" dst-required="false"
	 src-table="public.producto"
	 dst-table="public.variedades"/>

</dbmodel>
