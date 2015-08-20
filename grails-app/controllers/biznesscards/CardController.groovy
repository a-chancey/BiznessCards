package biznesscards

class CardController {
    def static defaultAction = 'list'

    def edit = {
        def card = Card.get(params.id)
        if(!card) {
            card = new Card()
        }
        render(view:'edit', model:[card:card])
    }

    def list = {
        render(view:'list',
        model:[cards:Card.list(sort:'lastName')])
    }

    def save = {
        def card = loadCard(params.id)
        card.properties = params
        if(card.save()) {
            redirect(action:'list')
        } else {
            render(view:'edit', model:[card:card])
        }
    }

    private loadCard(id){
    def card = new Card();
        if(id) {
            card = Card.get(id)
        }
        return card
    }

}
