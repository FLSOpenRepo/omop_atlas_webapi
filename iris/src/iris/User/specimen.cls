/// 
Class User.specimen Extends %Persistent [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = specimen ]
{

Property specimenid As %Library.BigInt [ Required, SqlColumnNumber = 2, SqlFieldName = specimen_id ];

Property personid As %Library.BigInt [ Required, SqlColumnNumber = 3, SqlFieldName = person_id ];

Property specimenconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 4, SqlFieldName = specimen_concept_id ];

Property specimentypeconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 5, SqlFieldName = specimen_type_concept_id ];

Property specimendate As %Library.Date [ SqlColumnNumber = 6, SqlFieldName = specimen_date ];

Property specimendatetime As %Library.TimeStamp [ Required, SqlColumnNumber = 7, SqlFieldName = specimen_datetime ];

Property quantity As %Library.Numeric(MAXVAL = 999999999999999, MINVAL = -999999999999999, SCALE = 0) [ SqlColumnNumber = 8 ];

Property unitconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 9, SqlFieldName = unit_concept_id ];

Property anatomicsiteconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 10, SqlFieldName = anatomic_site_concept_id ];

Property diseasestatusconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 11, SqlFieldName = disease_status_concept_id ];

Property specimensourceid As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 12, SqlFieldName = specimen_source_id ];

Property specimensourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 13, SqlFieldName = specimen_source_value ];

Property unitsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 14, SqlFieldName = unit_source_value ];

Property anatomicsitesourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 15, SqlFieldName = anatomic_site_source_value ];

Property diseasestatussourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 16, SqlFieldName = disease_status_source_value ];

Parameter USEEXTENTSET = 1;

Index personIdIndx On personid [ SqlName = person_id_indx, Type = index ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Storage Default
{
<Data name="specimenDefaultData">
<Value name="1">
<Value>specimenid</Value>
</Value>
<Value name="2">
<Value>personid</Value>
</Value>
<Value name="3">
<Value>specimenconceptid</Value>
</Value>
<Value name="4">
<Value>specimentypeconceptid</Value>
</Value>
<Value name="5">
<Value>specimendate</Value>
</Value>
<Value name="6">
<Value>specimendatetime</Value>
</Value>
<Value name="7">
<Value>quantity</Value>
</Value>
<Value name="8">
<Value>unitconceptid</Value>
</Value>
<Value name="9">
<Value>anatomicsiteconceptid</Value>
</Value>
<Value name="10">
<Value>diseasestatusconceptid</Value>
</Value>
<Value name="11">
<Value>specimensourceid</Value>
</Value>
<Value name="12">
<Value>specimensourcevalue</Value>
</Value>
<Value name="13">
<Value>unitsourcevalue</Value>
</Value>
<Value name="14">
<Value>anatomicsitesourcevalue</Value>
</Value>
<Value name="15">
<Value>diseasestatussourcevalue</Value>
</Value>
</Data>
<DataLocation>^poCN.CoQI.1</DataLocation>
<DefaultData>specimenDefaultData</DefaultData>
<ExtentLocation>^poCN.CoQI</ExtentLocation>
<IdFunction>sequence</IdFunction>
<IdLocation>^poCN.CoQI.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.CoQI.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.CoQI.1</Location>
</Index>
<Index name="personIdIndx">
<Location>^poCN.CoQI.3</Location>
</Index>
<IndexLocation>^poCN.CoQI.I</IndexLocation>
<StreamLocation>^poCN.CoQI.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}