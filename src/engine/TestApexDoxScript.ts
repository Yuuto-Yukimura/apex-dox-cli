/* var greet: string = "Greetings"; 
var geeks: string = "GeeksforGeeks"; 
console.log(greet + " from " + geeks);  */
import { IEngineConfig, ISourceEntry } from '..';
import ApexDox from './ApexDox';

var srcEntry: ISourceEntry[] = [{
    path: "D:\\ApexDox\\apexExampleClasses"
}]

var config: IEngineConfig = {
    source: srcEntry,
    targetDirectory: "D:\\ApexDox\\Documentation",
    includes: [],
    excludes: [],
    homePagePath: "",
    scope: [ 'global', 'public', 'protected', 'private', 'testMethod', 'webService' ],
    title: "Apex Documentation",
    subtitle: "Powered by ApexDox",
    showTOCSnippets: true,
    sortOrder: "alpha",
    cleanDir: false,
    assets: [],
    pages: [],
    port: 8080
}

console.log("running config "+config);
ApexDox.run(config);