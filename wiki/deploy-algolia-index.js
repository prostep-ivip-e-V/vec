var atomicalgolia = require("./algolia-update/update.js")
var indexName = "ecadwiki"
var indexPath = "public/index.json"
var cb = function(error, result) {
    if (error) throw error

    console.log(result)
}

atomicalgolia(indexName, indexPath, {verbose: true}, cb)