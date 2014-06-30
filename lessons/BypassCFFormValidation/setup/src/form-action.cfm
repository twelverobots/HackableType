<cfparam name="form.year" default="0">

<cfoutput>You are roughly #DateDiff("yyyy", CreateDate(form.year, 1,1), Now())# years old.</cfoutput>
