BEGIN{
    print "Start"
}
NR>1{ 
    if($NF>70000)
            $6="High"
    else $6="Low"
            print $0
}
END{
    print "End"
}