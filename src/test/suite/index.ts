import path = require('path');

export function run(): void {
  require(path.resolve(__dirname, './extension.test'));
}
