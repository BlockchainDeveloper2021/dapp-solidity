const dappSolidity = artifacts.require("dappSolidity");

module.exports = function (deployer) {
  deployer.deploy(dappSolidity);
};
