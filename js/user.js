import { sp } from "@pnp/sp";
import "@pnp/sp/webs";
import "@pnp/sp/site-users/web";


// identify user
global.username ="";
global.position = "" ;
global.identified = fase;

// module.exports.um = usermodules
let usermodules = {
    username: "",
    position:"",

    indentyUser:async ()=>{
        // check who user is
       let user = await sp.web.currentUser();
       // check his role or position
        let groups = user.group;
        console.log(groups);
        global.username = user.LoginName;
        console.log(user.LoginName);
        // usermodules.redirectUser(groups);

    },
    redirectUser:(position)=>{
        switch (position) {
            case "Director":{
                // navigate to the director page
                navigator.location.href = ""
                global.identified = true;
                break;
            }
        }
    },

}

usermodules.indentyUser();
