<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Connectify</title>
</head>
<body>
<v-container fluid>
    <v-row>
        <v-col>
            <v-carousel
                    cycle
                    height="350"
                    hide-delimiter-background
                    show-arrows-on-hover
            >
                <v-carousel-item>
                    <v-sheet height="100%">
                        <v-row class="fill-height" align="center" justify="center">
                            <div class="display-3">Slide 1</div>
                        </v-row>
                    </v-sheet>
                </v-carousel-item><v-carousel-item>
                <v-sheet height="100%">
                    <v-row class="fill-height" align="center" justify="center">
                        <div class="display-3">Slide 2</div>
                    </v-row>
                </v-sheet>
            </v-carousel-item>
            </v-carousel>
        </v-card>
        </v-col>
    </v-row>
</v-container>
<g:each in="${activityTList}" var="pair" >
    <v-container fluid>
        <v-row no-gutters>
            <v-col>
                <p class="ml-5 headline">Category: ${pair.getaValue().name}</p>
            </v-col>
        </v-row>
        <v-row>
            <v-carousel
                    height="570"
                    hide-delimiters
                    show-arrows-on-hover>
                <v-carousel-item :key="j" v-for="j in 4">
                    <v-container fluid>
                        <v-row>
                            <g:each in="${pair.getbValue()}" var="activityt" status="i">
                                <v-col v-if="(j-1) * 3 <= ${i} && ${i} < (j) *3">
                                    <v-card  class="mx-auto"
                                             max-width="400">
                                        <v-container fluid class="pa-0">
                                            <v-img
                                                    src="https://cdn.vuetifyjs.com/images/cards/house.jpg"
                                                    gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                                                    height="160px"
                                            >
                                                <v-row no-gutters align="center" class="pl-1 py-0">
                                                    <v-col cols="10" class="pa-0">
                                                        <v-card-subtitle class="pa-0 white--text">Categoria: ${activityt.category.name}</v-card-subtitle>
                                                        <v-card-title class="pa-0  white--text"> ${activityt.name}</v-card-title>
                                                    </v-col>
                                                    <v-col cols="2" class="pa-0">
                                                        <v-btn icon color="#59D0B4" class="pa-0" >
                                                            <v-icon>
                                                                mdi-heart
                                                            </v-icon>
                                                        </v-btn>
                                                    </v-col>
                                                </v-row>
                                            </v-img>
                                        </v-container>
                                        <v-card-actions class="pa-0">
                                            <v-container fluid class="pa-1">
                                                <v-row align="center">
                                                    <v-col cols="9" class="pa-1">
                                                        <v-card-title class="cyan--text ml-3 pa-2"  >By: ${activityt.conectioner.user.name}</v-card-title>
                                                    </v-col>
                                                </v-row>
                                                <v-row align="center">
                                                    <v-col class="pa-1" >
                                                        <p class="ml-5" >Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus dolore eius facilis inventore laboriosam mollitia officiis porro, qui, quia quod, repellendus tempore temporibus vel! Beatae doloremque id obcaecati porro quas.${activityt.description}</p>
                                                    </v-col>
                                                </v-row>
                                                <v-divider></v-divider>
                                                <v-row align="center">
                                                    <v-col class="pa-0" >
                                                        <p class="subtitle-1 ml-5 my-0 py-1">Address: ${activityt.address}</p>
                                                    </v-col>
                                                </v-row>
                                                <v-row align="center">
                                                    <v-col class="pa-0" >
                                                        <p class="headline ml-5 my-0">Availability:</p>
                                                    </v-col>
                                                </v-row>
                                                <v-row align="center" wrap class="py-0">
                                                    <v-chip-group
                                                            v-model="selection"
                                                            active-class="teal accent-2"
                                                            class="ma-auto"
                                                    >
                                                        <g:each var="activity" in="${activityt.activity}">
                                                            <v-chip @click="takeOnActivity(${activity.id})" class="ma-3">${activity.initDate} ${activity.initTime} ${activity.participants}/${activityt.maxParticipants}</v-chip>
                                                        </g:each>
                                                    </v-chip-group>
                                                </v-row>
                                                <v-row class="pa-0 ma-0">
                                                    <v-col class="pa-0 ma-0">
                                                        <v-btn text color="#59D0B4">
                                                            Sign up
                                                        </v-btn>
                                                    </v-col>
                                                </v-row>
                                            </v-container>
                                        </v-card-actions>
                                    </v-card>
                                </v-col>
                            </g:each>
                        </v-row>
                    </v-container>

                </v-carousel-item>

            </v-carousel>
        </v-row>
    </v-container>
</g:each>




<div id="content" role="main">
    <div id="controllers" role="navigation">
        <h2>Available Controllers:</h2>
        <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <li class="controller">
                    <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                </li>
            </g:each>
        </ul>
    </div>
</div>

</body>
</html>
