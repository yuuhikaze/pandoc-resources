function concat_with_space(...)
  return table.concat({...}, " ")
end

function convert(input, output, options)
    -- structurizr export ... -workspace workspace.dsl -output diagrams
    -- -format static
    local command = concat_with_space("structurizr", "export", options[1], "-workspace", input, "-output", output)
    return os.execute(command)
end

return convert
