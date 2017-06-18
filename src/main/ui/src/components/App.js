import React from 'react';

import EditForm from './EditForm';
import RouteList from './RouteList';

class App extends React.Component {

    constructor() {
        super()

        this.state = {
            mode: 'list',
            current: {},
            routes: [
                { name: "Route 1", description: "Route 1 Desc", sourceLocation: "EXT_/0000/0000/0000/0000", targetLocation: "FG__/0001/0000/0000/0000", sourceLocationGroupName: "", targetLocationGroupName: "FGAISLE1", enabled: true },
                { name: "Route 2", description: "Route 2 Desc", sourceLocation: "FGIN/0001/0000/0000/0000", targetLocation: "", sourceLocationGroupName: "FGAISLE1", targetLocationGroupName: "ZILE", enabled: true },
                { name: "Route 3", description: "Route 3 Desc", sourceLocation: "FG__/TIPP/0001/0001/0000", targetLocation: "FG__/TIPP/0002/0001/0000", sourceLocationGroupName: "FGTIPP", targetLocationGroupName: "FGCARTON", enabled: false },
            ],
        }
    }

    handleCreateRoute(route) {
        this.setState({mode: 'create'})
    }

    handleDeleteRoute(routeName) {
        console.log('Deleting Route with name ' + routeName)
        const routes = this.state.routes.filter(function(r) {return r.name != routeName});
        this.setState({routes: routes})
    }

    handleModifyRoute(routeName) {
        console.log('Modify Route with name ' + routeName)
        const route = this.state.routes.filter(function(r) {return r.name == routeName});
        this.setState({
            current: route[0],
            mode: 'edit'
        })
    }

    handleCancel() {
        this.setState({
                mode: 'list',
                current: {},
            }
        )
    }

    handleSaveNew(route) {
        console.dir('Add route: ' + route)
        const routeArr = this.state.routes.concat(route);
        this.setState(
            {
                mode: 'list',
                routes: routeArr,
            }
        )
    }

    render() {
        if (this.state.mode == 'create') {
            return (
                <div className='container'>
                    <div className='row'>
                        <EditForm mode={this.state.mode} value={this.state.current}
                            onBack={this.handleCancel.bind(this)}
                            onSave={this.handleSaveNew.bind(this)}
                        />
                    </div>
                </div>
            );
        }
        if (this.state.mode == 'edit') {
            return (
                <div className='container'>
                    <div className='row'>
                        <EditForm mode={this.state.mode} value={this.state.current}
                            onBack={this.handleCancel.bind(this)}
                            onSave={this.handleSaveNew.bind(this)}
                        />
                    </div>
                </div>
            );
        }
        else {
            return (
                <div className='container'>
                    <div className='row'>
                        <RouteList routes={this.state.routes}
                            onCreate={this.handleCreateRoute.bind(this)}
                            onDelete={this.handleDeleteRoute.bind(this)}
                            onModify={this.handleModifyRoute.bind(this)}
                            />
                    </div>
                </div>
            );
        }
    }
}

export default App;