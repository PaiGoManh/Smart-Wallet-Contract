const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("SmartWalletDeployment", (m) => {
    
  const recoveryAddress = "0x9Db5090E20b8dF8805f10197Fd89aAb278BC8Dd4";
  const smartWallet = m.contract("SmartWallet", [recoveryAddress]);

  return { smartWallet };
});
