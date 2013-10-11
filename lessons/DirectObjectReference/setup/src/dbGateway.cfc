<cfcomponent>
	<cffunction name="getUserInfo" access="public" returntype="User" output="false">
		<cfargument name="userid" type="numeric" required="true" />
		
		<cfset var qUser = "" />
		<cfset var qCards = "" />
		<cfset var user = "" />
		
		<cfquery name="qUser" datasource="#application.dsn#">
			SELECT username, first_name, last_name, state
			FROM users
			WHERE userid = <cfqueryparam value="#arguments.userid#" cfsqltype="cf_sql_numeric" />
		</cfquery>
		
		<cfquery name="qCards" datasource="#application.dsn#">
			SELECT cc.card_no, cc.cc_id
			FROM creditcards cc
				JOIN user_cards uc ON cc.cc_id = uc.cc_id
			WHERE uc.userid = <cfqueryparam value="#arguments.userid#" cfsqltype="cf_sql_numeric" />
		</cfquery>

		<cfset user = createObject('component', 'User').init(qUser.first_name, qUser.last_name, qUser.state) />
		
		<cfloop query="qCards">
			<cfset user.addCreditCard(qCards.cc_id, qCards.card_no) />
		</cfloop>
		
		<cfreturn user />
	</cffunction>
	
	<cffunction name="getCardInfo" access="public" returntype="Struct" output="false">
		<cfargument name="cardid" type="numeric" required="true" />
		
		<cfset var qCardInfo = "" />
		<cfset cardStruct = structNew() />
		<cfquery name="qCardInfo" datasource="#application.dsn#">
			SELECT cc_id, cardholder_name, card_no
			FROM creditcards
			WHERE cc_id = <cfqueryparam value="#arguments.cardid#" cfsqltype="cf_sql_numeric" />
		</cfquery>
		
		<cfset cardStruct.cardid = qCardInfo.cc_id />
		<cfset cardStruct.name = qCardInfo.cardholder_name />
		<cfset cardStruct.card_no = qCardInfo.card_no />
		
		<cfreturn cardStruct />
	</cffunction>
</cfcomponent>