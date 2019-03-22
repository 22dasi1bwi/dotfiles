# Defined in - @ line 0
function delete_undesired_history --description 'deletes undesired history entries for the given argument'
	history --delete  $argv;
end

