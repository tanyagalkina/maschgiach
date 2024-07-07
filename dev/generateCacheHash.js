const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

// Function to recursively get all files in a directory
function getFiles(dir, files_) {
    files_ = files_ || [];
    const files = fs.readdirSync(dir);
    for (const file of files) {
        const name = path.join(dir, file);
        if (fs.statSync(name).isDirectory()) {
            getFiles(name, files_);
        } else {
            files_.push(name);
        }
    }
    return files_;
}

// Generate a hash based on the contents of the files
function generateHash(files) {
    const hash = crypto.createHash('sha256');
    files.forEach(file => {
        const fileContent = fs.readFileSync(file);
        hash.update(fileContent);
    });
    return hash.digest('hex');
}

// Get all files in the dist folder
const filesToCache = getFiles('./dist').map(file => file.replace('dist/', '/'));

// Generate a hash based on the files
const cacheHash = generateHash(getFiles('./dist'));

// Write the file list and hash to a cache-files.js file
const cacheData = {
    cacheHash,
    urlsToCache: filesToCache
};

fs.writeFileSync('./dist/cache-files.js', `const cacheData = ${JSON.stringify(cacheData)};`);
