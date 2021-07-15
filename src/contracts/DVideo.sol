pragma solidity ^0.5.0;

contract Dvideo {

    uint public videoCount = 0;
    string public name = "DVideo";

    struct Video {
        uint id;
        string hash;
        string title;
        address author;
    }

    event videoUploaded {
        uint id;
        string hash;
        string title;
        address author;
    }

    mapping(uint => video) public videos;

    constructor public {

    }

    uploadVideo(string memory _videoHash, string memory _title) public {
        
        require(bytes(_videoHash.length) > 0 && bytes(_title.length) > 0 && msg.sender != 0);

        uint id = videoCount + 1;

        videos[id] = Video(id, _videoHash, _title, msg.sender);

        emit videoUploaded(id, _videoHash, _title, msg.sender)
    }
}