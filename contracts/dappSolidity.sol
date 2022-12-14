pragma solidity >=0.4.22 <0.9.0;

contract dappSolidity {
    struct File {
        string hash;
        string fileName;
        string fileType;
        uint256 date;
    }

    mapping(address => File[]) files;

    function add(
        string memory _hash,
        string memory _fileName,
        string memory _fileType,
        uint256 _date
    ) public {
        files[msg.sender].push(
            File({
                hash: _hash,
                fileName: _fileName,
                fileType: _fileType,
                date: _date
            })
        );
    }

    function getFile(uint256 _index)
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            uint256
        )
    {
        File memory file = files[msg.sender][_index];
        return (file.hash, file.fileName, file.fileType, file.date);
    }

    function getLength() public view returns (uint256) {
        return files[msg.sender].length;
    }
}
