public class PermissionSetsHandler {
    @future
	Public static void PermissionSetAssign(set<id> uId)
	{
		Permissionset permset = [select id, name from Permissionset where name = 'Marketing_User_Permissions' Limit 1];

		List<permissionsetassignment> newpermissions = new List<permissionsetassignment>();
		for(Id userid : uId)
		{
        Permissionsetassignment assignment = new permissionsetassignment();
        assignment.permissionsetid = permset.id;
        assignment.Assigneeid = userId;
        newpermissions.add(assignment);
}
	if(newpermissions != null)
    {
    	Insert newpermissions;
    }


}

}