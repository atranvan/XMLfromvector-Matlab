function xmlfromvector(vector)
    dim=size(vector,1);
    PVLinescanDefinition=[];
    PVLinescanDefinition.ATTRIBUTE.mode='freeHand';
    
    for i=1:dim;
        PVLinescanDefinition.PVFreehand(i).ATTRIBUTE.x=num2str(vector(i,1));
        PVLinescanDefinition.PVFreehand(i).ATTRIBUTE.y=num2str(vector(i,2));
    end
    wPref.StructItem = false;
    xml_write('toimport.xml',PVLinescanDefinition,'PVLinescanDefinition', wPref);
    %type('toimport.xml')
end