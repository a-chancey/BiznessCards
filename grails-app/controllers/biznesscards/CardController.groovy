package biznesscards

class CardController {
    def defaultAction = 'list'

    def edit = {
        def card = Card.get(params.id)
        if(!card) {
            card = new Card()
        }
        render(view:'edit', model:[card:card])
    }

    def list = {
        render(view:'list',
        model:[cards:Card.list(sort:'lastName', order:'desc')])
    }
}
