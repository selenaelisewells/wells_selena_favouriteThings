// import your packages here
import { fetchData } from "./modules/TheDataMiner.js";

(() => {
    // stub * just a place for non-component-specific stuff
    console.log('loaded');

    function popErrorBox(message) {
        alert("Something has gone horribly, horribly wrong");
    }

    function handleDataSet(data) {
        //populate a lightbox with this data
        //and then open it
        document.querySelectorAll(".lightbox");

        // let userSection = document.querySelector('.user-section'),
        //     userTemplate = document.querySelector('#user-template').content;

        // for (let user in data) {
        //     let currentUser = userTemplate.cloneNode(true),
        //         currentUserText = currentUser.querySelector('.user').children;

        //     currentUserText[1].src = `images/${data[user].avatar}`;
        //     currentUserText[2].textContent = data[user].name;
        //     currentUserText[3].textContent = data[user].role;
        //     currentUserText[4].textContent = data[user].nickname;

        //     // add this new user to the view
        //     userSection.appendChild(currentUser);
    }


    function retrieveProjectInfo(event) {
        // test for an ID
        //check for an id and if theere isnt one - leave function
        if (!event.target.id) { return }

        fetchData(`./includes/index.php?ID=${event.target.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        console.log(thumbs)
        let thingSection = document.querySelector('.things-section'),
            thingTemplate = document.querySelector('#things-template').content;

        for (let thing in thumbs) {
            let currentThing = thingTemplate.cloneNode(true),
                currentThingText = currentThing.querySelector('.thing').children;

            currentThingText[1].src = `images/${thumbs[thing].Image}`;
            currentThingText[1].id = thumbs[thing].ID;
            // add this new thing to the view

            thingSection.appendChild(currentThing);
        }

        thingSection.addEventListener("click", retrieveProjectInfo);
    }

    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));
})();