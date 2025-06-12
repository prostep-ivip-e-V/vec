declare namespace ua="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd";

let $allDataTypes := //ua:UADataType
let $usedDataTypes := //ua:Field/@DataType
let $baseDataTypes := //ua:Reference[@ReferenceType='HasSubtype']
let $unusedDataTypes := 
  $allDataTypes[not(@NodeId = $usedDataTypes) and not(@NodeId= $baseDataTypes)]
let $groupedDataTypes := 
  for $type in $unusedDataTypes
  let $baseName := replace($type/@BrowseName, "IdDataType$", "")
  group by $baseName
  let $hasIdDataType := some $dt in $unusedDataTypes
                          satisfies replace($dt/@BrowseName, "IdDataType$", "") = $baseName
                                and contains($dt/@BrowseName, "IdDataType")
  where $hasIdDataType
  order by $baseName
  return
    <Group Name="{ $baseName }">
      {
        for $dt in $unusedDataTypes
        where replace($dt/@BrowseName, "IdDataType$", "") = $baseName
        return
          <DataType>
            <NodeId>{ $dt/@NodeId }</NodeId>
            <BrowseName>{ $dt/@BrowseName }</BrowseName>
          </DataType>
      }
    </Group>
return
  <UnusedDataTypes>
    { $groupedDataTypes }
  </UnusedDataTypes>