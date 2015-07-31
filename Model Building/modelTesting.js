printing=require('./matlabPrinting.js');
function makeGlobal(o){
    for (i in o){
	global[i]=o[i];
    }
}
makeGlobal(printing);

function createBaseFiles(m) {
	if (m.current==undefined||m.opened==undefined||m.dilated==undefined) {
		return;
	}
	for (var p in printing) {
		var printer=new printing[p](m);
		console.info('Writing File:',printer.name()+'.m');
		fs.writeFile('./'+printer.name()+'.m',printer.toString())
	}
	//create .mat file containing all info for our model for simple loading
	console.info('Running MATLAB to create model struct...')
	var exec = require('child_process').exec;
	exec('matlab < '+printing.matlabGetModel(m).name()+'.m -nodisplay', function callback(error, stdout, stderr){
		// result
	});
	
	//printing=require('./fortranPrinting.js');
	//
	//for (var p in printing) {
	//	var printer=new printing[p](m);
	//	console.info('Writing File:',printer.name()+'.f');
	//	fs.writeFile('./'+printer.name()+'.f',printer.toString())
	//}
	
	return;

}

module.exports.createBaseFiles=createBaseFiles