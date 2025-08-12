package handlers

import (
	"log/slog"
	"net"

	"github.com/abenz1267/elephant/internal/providers"
	"github.com/abenz1267/elephant/pkg/pb/pb"
	"google.golang.org/protobuf/proto"
)

type ActivateRequest struct{}

func (a *ActivateRequest) Handle(cid uint32, conn net.Conn, data []byte) {
	req := &pb.ActivateRequest{}
	if err := proto.Unmarshal(data, req); err != nil {
		slog.Error("activationrequesthandler", "protobuf", err)

		return
	}

	providers.Providers[req.Provider].Activate(uint32(req.Qid), req.Identifier, req.Action, req.Arguments)

	providers.Cleanup(uint32(req.Qid))
}
