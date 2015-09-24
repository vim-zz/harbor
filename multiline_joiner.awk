
{
	if (sub(/\\$/,"")) 
		printf "%s", $0; 
	else 
		print $0
}