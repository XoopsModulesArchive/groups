<{include file='db:gm_admin_navbar.tpl'}>


<br>
<table id="grptble" border="0" cellspacing="7" cellpadding="0">
    <tr id="grp2">
        <td><{$smarty.const._AM_GROUPS_NAME_GROUP}></td>
        <td><{$smarty.const._AM_GROUPS_MEMBERS_ACTUALS}></td>
        <td><{$smarty.const._AM_GROUPS_ACTIONS}></td>
        <td><{$smarty.const._AM_GROUPS_ALL_USERS}></td>
    </tr>

    <{foreach item=grp from=$grpInfo}>
        <form name="form<{$grp.id}>" method="POST" action="main.php">
            <input name="groupid" type="hidden" value="<{$grp.id}>">
            <tr>
                <td id="grp1"><{$grp.name}></td>
                <td>
                    <select name="curr" size="8" id="curr">
                        <{foreach from=$grp.users key=kee item=vee}>
                            <option value="<{$kee}>"><{$vee}></option>
                        <{/foreach}>
                    </select>
                </td>
                <td>
                    <input type="image" name="add" src="<{$xoops_url}>/modules/groups/images/arrow2.jpg" width="40" height="22"><br><br>
                    <input type="image" name="del" src="<{$xoops_url}>/modules/groups/images/arrow.jpg" width="40" height="22">

                </td>
                <td>
                    <select name="all" size="8" id="all">
                        <{foreach from=$allUsr key=kee item=vee}>
                            <option value="<{$kee}>"><{$vee}></option>
                        <{/foreach}>
                    </select>
                </td>
            </tr>
        </form>
    <{/foreach}>
</table>
      
